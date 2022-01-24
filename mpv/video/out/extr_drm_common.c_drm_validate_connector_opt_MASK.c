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
struct mp_log {int dummy; } ;
struct m_option {int dummy; } ;
struct bstr {int dummy; } ;

/* Variables and functions */
 int M_OPT_EXIT ; 
 scalar_t__ FUNC0 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*) ; 

__attribute__((used)) static int FUNC2(struct mp_log *log, const struct m_option *opt,
                                      struct bstr name, struct bstr param)
{
    if (FUNC0(param, "help")) {
        FUNC1(log);
        return M_OPT_EXIT;
    }
    return 1;
}