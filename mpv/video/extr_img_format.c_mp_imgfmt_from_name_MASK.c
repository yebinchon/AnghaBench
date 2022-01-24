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
struct mp_imgfmt_entry {int fmt; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mp_imgfmt_entry* mp_imgfmt_list ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(bstr name)
{
    int img_fmt = 0;
    for (const struct mp_imgfmt_entry *p = mp_imgfmt_list; p->name; ++p) {
        if (FUNC1(name, p->name)) {
            img_fmt = p->fmt;
            break;
        }
    }
    if (!img_fmt) {
        char *t = FUNC2(NULL, name);
        img_fmt = FUNC3(FUNC0(t));
        FUNC4(t);
    }
    return img_fmt;
}