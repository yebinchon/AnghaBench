#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
typedef  int /*<<< orphan*/  m_option_t ;
struct TYPE_2__ {int (* parse ) (struct mp_log*,int /*<<< orphan*/  const*,struct bstr,struct bstr,char***) ;int /*<<< orphan*/  (* free ) (char***) ;int /*<<< orphan*/  (* copy ) (int /*<<< orphan*/  const*,void*,char***) ;} ;

/* Variables and functions */
 int M_OPT_EXIT ; 
 scalar_t__ FUNC0 (struct bstr,char*) ; 
 int FUNC1 (struct mp_log*,char**) ; 
 TYPE_1__ m_option_type_keyvalue_list ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*) ; 
 int FUNC3 (struct mp_log*,int /*<<< orphan*/  const*,struct bstr,struct bstr,char***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,void*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char***) ; 

__attribute__((used)) static int FUNC6(struct mp_log *log, const m_option_t *opt,
                           struct bstr name, struct bstr param, void *dst)
{
    if (FUNC0(param, "help")) {
        FUNC2(log, "Syntax:\n\n   --msglevel=module1=level,module2=level,...\n\n"
                     "'module' is output prefix as shown with -v, or a prefix\n"
                     "of it. level is one of:\n\n"
                     "  fatal error warn info status v debug trace\n\n"
                     "The level specifies the minimum log level a message\n"
                     "must have to be printed.\n"
                     "The special module name 'all' affects all modules.\n");
        return M_OPT_EXIT;
    }

    char **dst_copy = NULL;
    int r = m_option_type_keyvalue_list.parse(log, opt, name, param, &dst_copy);
    if (r >= 0)
        r = FUNC1(log, dst_copy);

    if (r >= 0)
        m_option_type_keyvalue_list.copy(opt, dst, &dst_copy);
    m_option_type_keyvalue_list.free(&dst_copy);
    return r;
}