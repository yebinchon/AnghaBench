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
struct ra_imgfmt_desc {int dummy; } ;
struct ra {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int IMGFMT_END ; 
 int IMGFMT_START ; 
 int /*<<< orphan*/  FUNC0 (struct ra*,int,char*,...) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ra*,struct ra_imgfmt_desc*,int) ; 
 scalar_t__ FUNC4 (struct ra*,int,struct ra_imgfmt_desc*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

void FUNC6(struct ra *ra, int msgl)
{
    if (!FUNC2(ra->log, msgl))
        return;
    FUNC0(ra, msgl, "Image formats:\n");
    for (int imgfmt = IMGFMT_START; imgfmt < IMGFMT_END; imgfmt++) {
        const char *name = FUNC1(imgfmt);
        if (FUNC5(name, "unknown") == 0)
            continue;
        FUNC0(ra, msgl, "  %s", name);
        struct ra_imgfmt_desc desc;
        if (FUNC4(ra, imgfmt, &desc)) {
            FUNC0(ra, msgl, " => ");
            FUNC3(ra, &desc, msgl);
        } else {
            FUNC0(ra, msgl, "\n");
        }
    }
}