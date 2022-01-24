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
typedef  int /*<<< orphan*/  tmp ;
struct mp_log {int dummy; } ;
struct m_obj_list {int /*<<< orphan*/  (* print_unknown_entry_help ) (struct mp_log*,int /*<<< orphan*/ ) ;scalar_t__ use_global_options; } ;
struct m_obj_desc {int /*<<< orphan*/  (* print_help ) (struct mp_log*) ;} ;
struct m_config {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ *) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct bstr*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char***) ; 
 int FUNC6 (struct mp_log*,struct bstr,struct bstr,struct m_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct m_config*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mp_log*,struct bstr,struct bstr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_log*) ; 
 int /*<<< orphan*/  FUNC13 (struct mp_log*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mp_log *log, struct bstr opt_name,
                                  struct bstr name, struct bstr *pstr,
                                  struct m_config *config, int flags, bool nopos,
                                  struct m_obj_desc *desc,
                                  const struct m_obj_list *list, char ***ret)
{
    int nold = 0;
    char **args = NULL;
    int num_args = 0;
    int r = 1;
    char tmp[80];

    if (ret) {
        args = *ret;
        while (args && args[num_args])
            num_args++;
    }

    while (pstr->len > 0) {
        bstr fname, fval;
        r = FUNC11(log, opt_name, pstr, &fname, &fval);
        if (r < 0)
            goto exit;

        if (list->use_global_options) {
            FUNC8(log, "Option %.*s: this option does not accept sub-options.\n",
                   FUNC0(opt_name));
            FUNC8(log, "Sub-options for --vo and --ao were removed from mpv in "
                   "release 0.23.0.\nSee https://0x0.st/uM for details.\n");
            r = M_OPT_INVALID;
            goto exit;
        }

        if (FUNC3(fname, "help"))
            goto print_help;
        r = FUNC6(log, opt_name, name, config, fname, fval, flags,
                          nopos, &nold, &fname, &fval, tmp, sizeof(tmp));
        if (r < 0)
            goto exit;

        if (r > 0 && ret) {
            FUNC1(NULL, args, num_args, FUNC4(NULL, fname));
            FUNC1(NULL, args, num_args, FUNC4(NULL, fval));
            FUNC1(NULL, args, num_args, NULL);
            FUNC1(NULL, args, num_args, NULL);
            num_args -= 2;
        }

        if (!FUNC2(pstr, ":"))
            break;
    }

    if (ret) {
        if (num_args > 0) {
            *ret = args;
            args = NULL;
        } else {
            *ret = NULL;
        }
    }

    goto exit;

print_help: ;
    if (config) {
        if (desc->print_help)
            desc->print_help(log);
        FUNC7(config, "*");
    } else if (list->print_unknown_entry_help) {
        list->print_unknown_entry_help(log, FUNC9(80, "%.*s", FUNC0(name)));
    } else {
        FUNC10(log, "Option %.*s: item %.*s doesn't exist.\n",
               FUNC0(opt_name), FUNC0(name));
    }
    r = M_OPT_EXIT;

exit:
    FUNC5(&args);
    return r;
}