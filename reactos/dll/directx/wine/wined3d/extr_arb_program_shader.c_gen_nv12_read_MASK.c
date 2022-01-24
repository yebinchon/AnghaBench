#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct arbfp_blit_type {scalar_t__ res_type; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WINED3D_GL_RES_TYPE_TEX_2D ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,float const*) ; 

__attribute__((used)) static BOOL FUNC3(struct wined3d_string_buffer *buffer, const struct arbfp_blit_type *type,
        char *luminance)
{
    const char *tex;
    static const float nv12_coef[]
            = {2.0f / 3.0f, 1.0f / 3.0f, 1.0f, 1.0f};

    tex = FUNC0(type->res_type);

    /* NV12 surfaces contain a WxH sized luminance plane, followed by a (W/2)x(H/2)
     * sized plane where each component is an UV pair. So the effective
     * bitdepth is 12 bits per pixel If the whole texture is interpreted as luminance
     * data it looks approximately like this:
     *
     *        +----------------------------------+----
     *        |                                  |
     *        |                                  |
     *        |                                  |
     *        |                                  |
     *        |                                  |   2
     *        |            LUMINANCE             |   -
     *        |                                  |   3
     *        |                                  |
     *        |                                  |
     *        |                                  |
     *        |                                  |
     *        +----------------------------------+----
     *        |UVUVUVUVUVUVUVUVUVUVUVUVUVUVUVUVUV|
     *        |UVUVUVUVUVUVUVUVUVUVUVUVUVUVUVUVUV|
     *        |                                  |   1
     *        |                                  |   -
     *        |                                  |   3
     *        |                                  |
     *        |                                  |
     *        +----------------------------------+----
     *
     * When reading from rectangle textures, keep in mind that the input y coordinates
     * go from 0 to d3d_height, whereas the opengl texture height is 1.5 * d3d_height. */

    FUNC1(buffer, "PARAM nv12_coef = ");
    FUNC2(buffer, nv12_coef);
    FUNC1(buffer, ";\n");

    FUNC1(buffer, "MOV texcrd, fragment.texcoord[0];\n");
    /* We only have half the number of chroma pixels. */
    FUNC1(buffer, "MUL texcrd.x, texcrd.x, coef.y;\n");

    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {
        FUNC1(buffer, "RCP chroma.w, size.x;\n");
        FUNC1(buffer, "RCP chroma.z, size.y;\n");

        FUNC1(buffer, "MAD texcrd.y, texcrd.y, nv12_coef.y, nv12_coef.x;\n");

        /* We must not allow filtering horizontally, this would mix U and V.
         * Vertical filtering is ok. However, bear in mind that the pixel center is at
         * 0.5, so add 0.5. */

        /* Convert to non-normalized coordinates so we can find the
         * individual pixel. */
        FUNC1(buffer, "MUL texcrd.x, texcrd.x, size.x;\n");
        FUNC1(buffer, "FLR texcrd.x, texcrd.x;\n");
        /* Multiply by 2 since chroma components are stored in UV pixel pairs,
         * add 0.5 to hit the center of the pixel. */
        FUNC1(buffer, "MAD texcrd.x, texcrd.x, coef.z, coef.y;\n");

        /* Convert back to normalized coordinates. */
        FUNC1(buffer, "MUL texcrd.x, texcrd.x, chroma.w;\n");

        /* Clamp, keep the half pixel origin in mind. */
        FUNC1(buffer, "MAD temp.y, coef.y, chroma.z, nv12_coef.x;\n");
        FUNC1(buffer, "MAX texcrd.y, temp.y, texcrd.y;\n");
        FUNC1(buffer, "MAD temp.y, -coef.y, chroma.z, nv12_coef.z;\n");
        FUNC1(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
    }
    else
    {
        /* Read from [size - size+size/2] */
        FUNC1(buffer, "MAD texcrd.y, texcrd.y, coef.y, size.y;\n");

        FUNC1(buffer, "FLR texcrd.x, texcrd.x;\n");
        /* Multiply by 2 since chroma components are stored in UV pixel pairs,
         * add 0.5 to hit the center of the pixel. */
        FUNC1(buffer, "MAD texcrd.x, texcrd.x, coef.z, coef.y;\n");

        /* Clamp */
        FUNC1(buffer, "MAD temp.y, size.y, coef.y, size.y;\n");
        FUNC1(buffer, "ADD temp.y, temp.y, -coef.y;\n");
        FUNC1(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
        FUNC1(buffer, "ADD temp.y, size.y, coef.y;\n");
        FUNC1(buffer, "MAX texcrd.y, temp.y, texcrd.y;\n");
    }
    /* Read the texture, put the result into the output register. */
    FUNC1(buffer, "TEX temp, texcrd, texture[0], %s;\n", tex);
    FUNC1(buffer, "MOV chroma.y, temp.w;\n");

    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {
        /* Add 1/size.x */
        FUNC1(buffer, "ADD texcrd.x, texcrd.x, chroma.w;\n");
    }
    else
    {
        /* Add 1 */
        FUNC1(buffer, "ADD texcrd.x, texcrd.x, coef.x;\n");
    }
    FUNC1(buffer, "TEX temp, texcrd, texture[0], %s;\n", tex);
    FUNC1(buffer, "MOV chroma.x, temp.w;\n");

    /* Sample the luminance value. It is in the top 2/3rd of the texture, so scale the y coordinate.
     * Clamp the y coordinate to prevent the chroma values from bleeding into the sampled luminance
     * values due to filtering. */
    FUNC1(buffer, "MOV texcrd, fragment.texcoord[0];\n");
    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_2D)
    {
        /* Multiply the y coordinate by 2/3 and clamp it */
        FUNC1(buffer, "MUL texcrd.y, texcrd.y, nv12_coef.x;\n");
        FUNC1(buffer, "MAD temp.y, -coef.y, chroma.w, nv12_coef.x;\n");
        FUNC1(buffer, "MIN texcrd.y, temp.y, texcrd.y;\n");
        FUNC1(buffer, "TEX luminance, texcrd, texture[0], %s;\n", tex);
    }
    else
    {
        /* Reading from texture_rectangles is pretty straightforward, just use the unmodified
         * texture coordinate. It is still a good idea to clamp it though, since the opengl texture
         * is bigger
         */
        FUNC1(buffer, "ADD temp.x, size.y, -coef.y;\n");
        FUNC1(buffer, "MIN texcrd.y, texcrd.y, size.x;\n");
        FUNC1(buffer, "TEX luminance, texcrd, texture[0], %s;\n", tex);
    }
    *luminance = 'a';

    return TRUE;
}