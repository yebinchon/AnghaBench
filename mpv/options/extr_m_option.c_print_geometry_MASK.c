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
struct m_geometry {scalar_t__ y_sign; scalar_t__ x_sign; scalar_t__ xy_valid; scalar_t__ wh_valid; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h ; 
 int /*<<< orphan*/  h_per ; 
 char* FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  w ; 
 int /*<<< orphan*/  w_per ; 
 int /*<<< orphan*/  x ; 
 int /*<<< orphan*/  x_per ; 
 int /*<<< orphan*/  y ; 
 int /*<<< orphan*/  y_per ; 

__attribute__((used)) static char *FUNC3(const m_option_t *opt, const void *val)
{
    const struct m_geometry *gm = val;
    char *res = FUNC2(NULL, "");
    if (gm->wh_valid || gm->xy_valid) {
        if (gm->wh_valid) {
            FUNC0(w, w_per);
            res = FUNC1(res, "x");
            FUNC0(h, h_per);
        }
        if (gm->xy_valid) {
            res = FUNC1(res, gm->x_sign ? "-" : "+");
            FUNC0(x, x_per);
            res = FUNC1(res, gm->y_sign ? "-" : "+");
            FUNC0(y, y_per);
        }
    }
    return res;
}