#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct m_config {int dummy; } ;
struct TYPE_13__ {scalar_t__ len; scalar_t__ start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 char const* FUNC0 (TYPE_1__) ; 
 int M_OPT_EXIT ; 
 int M_OPT_OUT_OF_RANGE ; 
 int M_OPT_UNKNOWN ; 
 TYPE_1__ FUNC1 (char const*) ; 
 char* FUNC2 (struct m_config*,int) ; 
 scalar_t__ FUNC3 (struct m_config*,TYPE_1__) ; 
 int FUNC4 (struct m_config*,TYPE_1__,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,int) ; 

__attribute__((used)) static int FUNC7(struct mp_log *log, bstr opt_name, bstr obj_name,
                         struct m_config *config, bstr name, bstr val,
                         int flags, bool nopos,
                         int *nold, bstr *out_name, bstr *out_val,
                         char *tmp, size_t tmp_size)
{
    int r;

    if (!config) {
        // Duplicates the logic below, but with unknown parameter types/names.
        if (val.start || nopos) {
            *out_name = name;
            *out_val = val;
        } else {
            val = name;
            // positional fields
            if (val.len == 0) { // Empty field, count it and go on
                (*nold)++;
                return 0;
            }
            // Positional naming convention for/followed by mp_set_avopts().
            FUNC6(tmp, tmp_size, "@%d", *nold);
            *out_name = FUNC1(tmp);
            *out_val = val;
            (*nold)++;
        }
        return 1;
    }

    // val.start != NULL => of the form name=val (not positional)
    // If it's just "name", and the associated option exists and is a flag,
    // don't accept it as positional argument.
    if (val.start || FUNC3(config, name) == 0 || nopos) {
        r = FUNC4(config, name, val, flags);
        if (r < 0) {
            if (r == M_OPT_UNKNOWN) {
                FUNC5(log, "Option %.*s: %.*s doesn't have a %.*s parameter.\n",
                       FUNC0(opt_name), FUNC0(obj_name), FUNC0(name));
                return M_OPT_UNKNOWN;
            }
            if (r != M_OPT_EXIT)
                FUNC5(log, "Option %.*s: "
                       "Error while parsing %.*s parameter %.*s (%.*s)\n",
                       FUNC0(opt_name), FUNC0(obj_name), FUNC0(name),
                       FUNC0(val));
            return r;
        }
        *out_name = name;
        *out_val = val;
        return 1;
    } else {
        val = name;
        // positional fields
        if (val.len == 0) { // Empty field, count it and go on
            (*nold)++;
            return 0;
        }
        const char *opt = FUNC2(config, *nold);
        if (!opt) {
            FUNC5(log, "Option %.*s: %.*s has only %d "
                   "params, so you can't give more than %d unnamed params.\n",
                   FUNC0(opt_name), FUNC0(obj_name), *nold, *nold);
            return M_OPT_OUT_OF_RANGE;
        }
        r = FUNC4(config, FUNC1(opt), val, flags);
        if (r < 0) {
            if (r != M_OPT_EXIT)
                FUNC5(log, "Option %.*s: "
                       "Error while parsing %.*s parameter %s (%.*s)\n",
                       FUNC0(opt_name), FUNC0(obj_name), opt, FUNC0(val));
            return r;
        }
        *out_name = FUNC1(opt);
        *out_val = val;
        (*nold)++;
        return 1;
    }
}