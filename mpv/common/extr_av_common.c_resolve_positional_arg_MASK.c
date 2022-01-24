#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int offset; scalar_t__ type; scalar_t__ name; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 scalar_t__ AV_OPT_TYPE_CONST ; 
 TYPE_1__* FUNC0 (void*,TYPE_1__ const*) ; 
 int FUNC1 (char*,char**,int) ; 

__attribute__((used)) static void FUNC2(void *avobj, char **name)
{
    if (!*name || (*name)[0] != '@' || !avobj)
        return;

    char *end = NULL;
    int pos = FUNC1(*name + 1, &end, 10);
    if (!end || *end)
        return;

    const AVOption *opt = NULL;
    int offset = -1;
    while (1) {
        opt = FUNC0(avobj, opt);
        if (!opt)
            return;
        // This is what libavfilter's parser does to skip aliases.
        if (opt->offset != offset && opt->type != AV_OPT_TYPE_CONST)
            pos--;
        if (pos < 0) {
            *name = (char *)opt->name;
            return;
        }
        offset = opt->offset;
    }
}