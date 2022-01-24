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
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  optbuf ;
struct TYPE_4__ {int flags; int type; char* unit; char* name; int /*<<< orphan*/  help; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
#define  AV_OPT_TYPE_BINARY 136 
#define  AV_OPT_TYPE_CONST 135 
#define  AV_OPT_TYPE_DOUBLE 134 
#define  AV_OPT_TYPE_FLAGS 133 
#define  AV_OPT_TYPE_FLOAT 132 
#define  AV_OPT_TYPE_INT 131 
#define  AV_OPT_TYPE_INT64 130 
#define  AV_OPT_TYPE_RATIONAL 129 
#define  AV_OPT_TYPE_STRING 128 
 TYPE_1__* FUNC0 (void const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(struct mp_log *log, const void *obj,
                                     const char *indent, const char *subindent,
                                     const char *unit, int filter_and,
                                     int filter_eq)
{
    const AVOption *opt = NULL;
    char optbuf[32];
    while ((opt = FUNC0(obj, opt))) {
        // if flags are 0, it simply hasn't been filled in yet and may be
        // potentially useful
        if (opt->flags)
            if ((opt->flags & filter_and) != filter_eq)
                continue;
        /* Don't print CONST's on level one.
         * Don't print anything but CONST's on level two.
         * Only print items from the requested unit.
         */
        if (!unit && opt->type == AV_OPT_TYPE_CONST) {
            continue;
        } else if (unit && opt->type != AV_OPT_TYPE_CONST) {
            continue;
        } else if (unit && opt->type == AV_OPT_TYPE_CONST
                 && FUNC3(unit, opt->unit))
        {
            continue;
        } else if (unit && opt->type == AV_OPT_TYPE_CONST) {
            FUNC1(log, "%s", subindent);
        } else {
            FUNC1(log, "%s", indent);
        }

        switch (opt->type) {
        case AV_OPT_TYPE_FLAGS:
            FUNC2(optbuf, sizeof(optbuf), "%s=<flags>", opt->name);
            break;
        case AV_OPT_TYPE_INT:
            FUNC2(optbuf, sizeof(optbuf), "%s=<int>", opt->name);
            break;
        case AV_OPT_TYPE_INT64:
            FUNC2(optbuf, sizeof(optbuf), "%s=<int64>", opt->name);
            break;
        case AV_OPT_TYPE_DOUBLE:
            FUNC2(optbuf, sizeof(optbuf), "%s=<double>", opt->name);
            break;
        case AV_OPT_TYPE_FLOAT:
            FUNC2(optbuf, sizeof(optbuf), "%s=<float>", opt->name);
            break;
        case AV_OPT_TYPE_STRING:
            FUNC2(optbuf, sizeof(optbuf), "%s=<string>", opt->name);
            break;
        case AV_OPT_TYPE_RATIONAL:
            FUNC2(optbuf, sizeof(optbuf), "%s=<rational>", opt->name);
            break;
        case AV_OPT_TYPE_BINARY:
            FUNC2(optbuf, sizeof(optbuf), "%s=<binary>", opt->name);
            break;
        case AV_OPT_TYPE_CONST:
            FUNC2(optbuf, sizeof(optbuf), "  [+-]%s", opt->name);
            break;
        default:
            FUNC2(optbuf, sizeof(optbuf), "%s", opt->name);
            break;
        }
        optbuf[sizeof(optbuf) - 1] = 0;
        FUNC1(log, "%-32s ", optbuf);
        if (opt->help)
            FUNC1(log, " %s", opt->help);
        FUNC1(log, "\n");
        if (opt->unit && opt->type != AV_OPT_TYPE_CONST)
            FUNC4(log, obj, indent, subindent, opt->unit,
                                     filter_and, filter_eq);
    }
}