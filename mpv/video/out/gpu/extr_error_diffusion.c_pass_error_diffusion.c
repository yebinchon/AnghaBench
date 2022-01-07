
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int dummy; } ;
struct error_diffusion_kernel {int shift; int divisor; int** pattern; } ;


 int EF_MAX_DELTA_X ;
 int EF_MAX_DELTA_Y ;
 int EF_MIN_DELTA_X ;
 int GLSL (char*,...) ;
 int GLSLH (char*,int) ;
 int assert (int) ;
 int compute_rightmost_shifted_column (struct error_diffusion_kernel const*) ;

void pass_error_diffusion(struct gl_shader_cache *sc,
                          const struct error_diffusion_kernel *k,
                          int tex, int width, int height, int depth, int block_size)
{
    assert(block_size <= height);
    int shifted_width = width + (height - 1) * k->shift;





    int blocks = (height * shifted_width + block_size - 1) / block_size;





    int ring_buffer_rows = height + EF_MAX_DELTA_Y;
    int ring_buffer_columns = compute_rightmost_shifted_column(k) + 1;
    int ring_buffer_size = ring_buffer_rows * ring_buffer_columns;


    GLSLH("shared uint err_rgb8[%d];\n", ring_buffer_size);


    GLSL("for (int i = int(gl_LocalInvocationIndex); i < %d; i += %d) ",
         ring_buffer_size, block_size);
    GLSL("err_rgb8[i] = 0;\n");

    GLSL("for (int block_id = 0; block_id < %d; ++block_id) {\n", blocks);



    GLSL("groupMemoryBarrier();\n");
    GLSL("barrier();\n");



    GLSL("int id = int(gl_LocalInvocationIndex) + block_id * %d;\n", block_size);
    GLSL("int y = id %% %d, x_shifted = id / %d;\n", height, height);
    GLSL("int x = x_shifted - y * %d;\n", k->shift);


    GLSL("if (0 <= x && x < %d) {\n", width);


    GLSL("int idx = (x_shifted * %d + y) %% %d;\n", ring_buffer_rows, ring_buffer_size);


    GLSL("vec3 pix = texelFetch(texture%d, ivec2(x, y), 0).rgb;\n", tex);


    int dither_quant = (1 << depth) - 1;
    int bitshift_r = 24, bitshift_g = 12;

    int uint8_mul = 127 * 2;



    GLSL("uint err_u32 = err_rgb8[idx] + %uu;\n",
         (128u << bitshift_r) | (128u << bitshift_g) | 128u);
    GLSL("pix = pix * %d.0 + vec3("
         "int((err_u32 >> %d) & 255u) - 128,"
         "int((err_u32 >> %d) & 255u) - 128,"
         "int( err_u32        & 255u) - 128"
         ") / %d.0;\n", dither_quant, bitshift_r, bitshift_g, uint8_mul);
    GLSL("err_rgb8[idx] = 0;\n");


    GLSL("vec3 dithered = round(pix);\n");
    GLSL("imageStore(out_image, ivec2(x, y), vec4(dithered / %d.0, 0.0));\n",
         dither_quant);

    GLSL("vec3 err_divided = (pix - dithered) * %d.0 / %d.0;\n",
         uint8_mul, k->divisor);
    GLSL("ivec3 tmp;\n");



    for (int dividend = 1; dividend <= k->divisor; dividend++) {
        bool err_assigned = 0;

        for (int y = 0; y <= EF_MAX_DELTA_Y; y++) {
            for (int x = EF_MIN_DELTA_X; x <= EF_MAX_DELTA_X; x++) {
                if (k->pattern[y][x - EF_MIN_DELTA_X] != dividend)
                    continue;

                if (!err_assigned) {
                    err_assigned = 1;

                    GLSL("tmp = ivec3(round(err_divided * %d.0));\n", dividend);

                    GLSL("err_u32 = "
                         "(uint(tmp.r & 255) << %d)|"
                         "(uint(tmp.g & 255) << %d)|"
                         " uint(tmp.b & 255);\n",
                         bitshift_r, bitshift_g);
                }

                int shifted_x = x + y * k->shift;





                if (x < 0)
                    GLSL("if (x >= %d) ", -x);



                int ring_buffer_delta = shifted_x * ring_buffer_rows + y;
                GLSL("atomicAdd(err_rgb8[(idx + %d) %% %d], err_u32);\n",
                     ring_buffer_delta, ring_buffer_size);
            }
        }
    }

    GLSL("}\n");

    GLSL("}\n");
}
