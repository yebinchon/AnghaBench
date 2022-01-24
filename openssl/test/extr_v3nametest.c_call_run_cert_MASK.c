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
struct set_name_fn {int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ *,char const* const) ;int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 struct set_name_fn* name_fns ; 
 char** names ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const* const,struct set_name_fn const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const* const) ; 

__attribute__((used)) static int FUNC7(int i)
{
    int failed = 0;
    const struct set_name_fn *pfn = &name_fns[i];
    X509 *crt;
    const char *const *pname;

    FUNC0("%s", pfn->name);
    for (pname = names; *pname != NULL; pname++) {
        if (!FUNC1(crt = FUNC4())
             || !FUNC2(pfn->fn(crt, *pname))
             || !FUNC5(crt, *pname, pfn))
            failed = 1;
        FUNC3(crt);
    }
    return failed == 0;
}