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
struct m_geometry {int dummy; } ;
struct bstr {int dummy; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int FUNC1 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_geometry*,struct bstr) ; 

__attribute__((used)) static int FUNC5(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    bool is_help = FUNC1(param, "help");
    if (is_help)
        goto exit;

    struct m_geometry gm;
    if (!FUNC4(&gm, param))
        goto exit;

    if (dst)
        *((struct m_geometry *)dst) = gm;

    return 1;

exit:
    if (!is_help) {
        FUNC2(log, "Option %.*s: invalid geometry: '%.*s'\n",
               FUNC0(name), FUNC0(param));
    }
    FUNC3(log,
         "Valid format: [W[%%][xH[%%]]][{+-}X[%%]{+-}Y[%%]] | [X[%%]:Y[%%]]\n");
    return is_help ? M_OPT_EXIT : M_OPT_INVALID;
}