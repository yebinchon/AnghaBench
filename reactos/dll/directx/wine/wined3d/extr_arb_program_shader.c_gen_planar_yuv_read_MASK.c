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
struct arbfp_blit_type {scalar_t__ fixup; scalar_t__ res_type; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ COMPLEX_FIXUP_UYVY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WINED3D_GL_RES_TYPE_TEX_RECT ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static BOOL FUNC2(struct wined3d_string_buffer *buffer, const struct arbfp_blit_type *type,
        char *luminance)
{
    char chroma;
    const char *tex, *texinstr = "TXP";

    if (type->fixup == COMPLEX_FIXUP_UYVY)
    {
        chroma = 'x';
        *luminance = 'w';
    }
    else
    {
        chroma = 'w';
        *luminance = 'x';
    }

    tex = FUNC0(type->res_type);
    if (type->res_type == WINED3D_GL_RES_TYPE_TEX_RECT)
        texinstr = "TEX";

    /* First we have to read the chroma values. This means we need at least two pixels(no filtering),
     * or 4 pixels(with filtering). To get the unmodified chromas, we have to rid ourselves of the
     * filtering when we sample the texture.
     *
     * These are the rules for reading the chroma:
     *
     * Even pixel: Cr
     * Even pixel: U
     * Odd pixel: V
     *
     * So we have to get the sampling x position in non-normalized coordinates in integers
     */
    if (type->res_type != WINED3D_GL_RES_TYPE_TEX_RECT)
    {
        FUNC1(buffer, "MUL texcrd.xy, fragment.texcoord[0], size.x;\n");
        FUNC1(buffer, "MOV texcrd.w, size.x;\n");
    }
    else
    {
        FUNC1(buffer, "MOV texcrd, fragment.texcoord[0];\n");
    }
    /* We must not allow filtering between pixel x and x+1, this would mix U and V
     * Vertical filtering is ok. However, bear in mind that the pixel center is at
     * 0.5, so add 0.5.
     */
    FUNC1(buffer, "FLR texcrd.x, texcrd.x;\n");
    FUNC1(buffer, "ADD texcrd.x, texcrd.x, coef.y;\n");

    /* Divide the x coordinate by 0.5 and get the fraction. This gives 0.25 and 0.75 for the
     * even and odd pixels respectively
     */
    FUNC1(buffer, "MUL texcrd2, texcrd, coef.y;\n");
    FUNC1(buffer, "FRC texcrd2, texcrd2;\n");

    /* Sample Pixel 1 */
    FUNC1(buffer, "%s luminance, texcrd, texture[0], %s;\n", texinstr, tex);

    /* Put the value into either of the chroma values */
    FUNC1(buffer, "SGE temp.x, texcrd2.x, coef.y;\n");
    FUNC1(buffer, "MUL chroma.x, luminance.%c, temp.x;\n", chroma);
    FUNC1(buffer, "SLT temp.x, texcrd2.x, coef.y;\n");
    FUNC1(buffer, "MUL chroma.y, luminance.%c, temp.x;\n", chroma);

    /* Sample pixel 2. If we read an even pixel(SLT above returned 1), sample
     * the pixel right to the current one. Otherwise, sample the left pixel.
     * Bias and scale the SLT result to -1;1 and add it to the texcrd.x.
     */
    FUNC1(buffer, "MAD temp.x, temp.x, coef.z, -coef.x;\n");
    FUNC1(buffer, "ADD texcrd.x, texcrd, temp.x;\n");
    FUNC1(buffer, "%s luminance, texcrd, texture[0], %s;\n", texinstr, tex);

    /* Put the value into the other chroma */
    FUNC1(buffer, "SGE temp.x, texcrd2.x, coef.y;\n");
    FUNC1(buffer, "MAD chroma.y, luminance.%c, temp.x, chroma.y;\n", chroma);
    FUNC1(buffer, "SLT temp.x, texcrd2.x, coef.y;\n");
    FUNC1(buffer, "MAD chroma.x, luminance.%c, temp.x, chroma.x;\n", chroma);

    /* TODO: If filtering is enabled, sample a 2nd pair of pixels left or right of
     * the current one and lerp the two U and V values
     */

    /* This gives the correctly filtered luminance value */
    FUNC1(buffer, "TEX luminance, fragment.texcoord[0], texture[0], %s;\n", tex);

    return TRUE;
}