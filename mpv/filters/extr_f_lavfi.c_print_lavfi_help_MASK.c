#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * priv_class; } ;
struct TYPE_7__ {scalar_t__ type; int offset; int /*<<< orphan*/  help; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ AVOption ;
typedef  TYPE_2__ AVFilter ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 scalar_t__ AV_OPT_TYPE_CONST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const**,TYPE_1__ const*) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*,char*,...) ; 
 char* FUNC7 (int,char*,char const*) ; 

void FUNC8(struct mp_log *log, const char *name, int media_type)
{
    const AVFilter *f = FUNC2(name);
    if (!f) {
        FUNC5(log, "Filter '%s' not found.\n", name);
        return;
    }
    if (!FUNC4(f, media_type)) {
        FUNC5(log, "Filter '%s' is not usable in this context (wrong media \n"
               "types or wrong number of inputs/outputs).\n", name);
    }
    FUNC6(log, "Options:\n\n");
    const AVClass *class = f->priv_class;
    // av_opt_next() requires this for some retarded incomprehensible reason.
    const AVClass **c = &class;
    int offset= -1;
    int count = 0;
    for (const AVOption *o = FUNC1(c, 0); o; o = FUNC1(c, o)) {
        // This is how libavfilter (at the time) decided to assign positional
        // options (called "shorthand" in the libavfilter code). So we
        // duplicate it exactly.
        if (o->type == AV_OPT_TYPE_CONST || o->offset == offset)
            continue;
        offset = o->offset;

        const char *t = FUNC3(o->type);
        char *tstr = t ? FUNC7(30, "<%s>", t) : "?";
        FUNC6(log, " %-10s %-12s %s\n", o->name, tstr, FUNC0(o->help));

        const AVOption *sub = o;
        while (1) {
            sub = FUNC1(c, sub);
            if (!sub || sub->type != AV_OPT_TYPE_CONST)
                break;
            FUNC6(log, " %3s%-23s %s\n", "", sub->name, FUNC0(sub->help));
        }

        count++;
    }
    FUNC6(log, "\nTotal: %d options\n", count);
}