#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_imgfmt_entry {int fmt; char* name; } ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 char FUNC0 (char,char) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mp_imgfmt_entry* mp_imgfmt_list ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*) ; 
 int FUNC4 (char*) ; 

char *FUNC5(char *buf, size_t buf_size, int fmt)
{
    const char *name = NULL;
    const struct mp_imgfmt_entry *p = mp_imgfmt_list;
    for (; p->fmt; p++) {
        if (p->name && p->fmt == fmt) {
            name = p->name;
            break;
        }
    }
    if (!name) {
        const AVPixFmtDescriptor *pixdesc = FUNC1(FUNC2(fmt));
        if (pixdesc)
            name = pixdesc->name;
    }
    if (!name)
        name = "unknown";
    FUNC3(buf, buf_size, "%s", name);
    int len = FUNC4(buf);
    if (len > 2 && buf[len - 2] == FUNC0('l', 'b') && buf[len - 1] == 'e')
        buf[len - 2] = '\0';
    return buf;
}