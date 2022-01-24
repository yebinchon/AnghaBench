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
struct image {int padding; int /*<<< orphan*/  transform; int /*<<< orphan*/  multiplier; } ;
struct gl_video {int dummy; } ;
typedef  int /*<<< orphan*/  crap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 char* FUNC1 (struct image*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  identity_trans ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct gl_video *p, const char *name, int id,
                         struct image img)
{
    FUNC0("#define %s_raw texture%d\n", name, id);
    FUNC0("#define %s_pos texcoord%d\n", name, id);
    FUNC0("#define %s_size texture_size%d\n", name, id);
    FUNC0("#define %s_rot texture_rot%d\n", name, id);
    FUNC0("#define %s_off texture_off%d\n", name, id);
    FUNC0("#define %s_pt pixel_size%d\n", name, id);
    FUNC0("#define %s_map texmap%d\n", name, id);
    FUNC0("#define %s_mul %f\n", name, img.multiplier);

    char crap[5] = "";
    FUNC4(crap, sizeof(crap), "%s", FUNC1(&img));

    // Remove leading padding by rotating the swizzle mask.
    int len = FUNC5(crap);
    for (int n = 0; n < img.padding; n++) {
        if (len) {
            char f = crap[0];
            FUNC3(crap, crap + 1, len - 1);
            crap[len - 1] = f;
        }
    }

    // Set up the sampling functions
    FUNC0("#define %s_tex(pos) (%s_mul * vec4(texture(%s_raw, pos)).%s)\n",
           name, name, name, crap);

    // Since the extra matrix multiplication impacts performance,
    // skip it unless the texture was actually rotated
    if (FUNC2(img.transform, identity_trans)) {
        FUNC0("#define %s_texOff(off) %s_tex(%s_pos + %s_pt * vec2(off))\n",
               name, name, name, name);
    } else {
        FUNC0("#define %s_texOff(off) "
                   "%s_tex(%s_pos + %s_rot * vec2(off)/%s_size)\n",
               name, name, name, name, name);
    }
}