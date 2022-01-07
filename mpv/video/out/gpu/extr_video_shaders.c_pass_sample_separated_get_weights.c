
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scaler {TYPE_1__* kernel; int lut_size; int lut; } ;
struct gl_shader_cache {int dummy; } ;
struct TYPE_2__ {int size; } ;


 int GLSLF (char*,int,...) ;
 int gl_sc_uniform_texture (struct gl_shader_cache*,char*,int ) ;

__attribute__((used)) static void pass_sample_separated_get_weights(struct gl_shader_cache *sc,
                                              struct scaler *scaler)
{
    gl_sc_uniform_texture(sc, "lut", scaler->lut);
    GLSLF("float ypos = LUT_POS(fcoord, %d.0);\n", scaler->lut_size);

    int N = scaler->kernel->size;
    int width = (N + 3) / 4;

    GLSLF("float weights[%d];\n", N);
    for (int i = 0; i < N; i++) {
        if (i % 4 == 0)
            GLSLF("c = texture(lut, vec2(%f, ypos));\n", (i / 4 + 0.5) / width);
        GLSLF("weights[%d] = c[%d];\n", i, i % 4);
    }
}
