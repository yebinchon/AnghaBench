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
struct error_diffusion_kernel {int dummy; } ;
struct bstr {int dummy; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  m_option_t ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 char* FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 scalar_t__ FUNC1 (struct bstr,char*) ; 
 TYPE_1__* mp_error_diffusion_kernels ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,char*) ; 
 struct error_diffusion_kernel* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct mp_log *log, const m_option_t *opt,
                                        struct bstr name, struct bstr param)
{
    char s[20] = {0};
    int r = 1;
    if (FUNC1(param, "help")) {
        r = M_OPT_EXIT;
    } else {
        FUNC5(s, sizeof(s), "%.*s", FUNC0(param));
        const struct error_diffusion_kernel *k = FUNC3(s);
        if (!k)
            r = M_OPT_INVALID;
    }
    if (r < 1) {
        FUNC4(log, "Available error diffusion kernels:\n");
        for (int n = 0; mp_error_diffusion_kernels[n].name; n++)
            FUNC4(log, "    %s\n", mp_error_diffusion_kernels[n].name);
        if (s[0])
            FUNC2(log, "No error diffusion kernel named '%s' found!\n", s);
    }
    return r;
}