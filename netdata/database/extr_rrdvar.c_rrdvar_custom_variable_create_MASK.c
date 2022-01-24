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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  char calculated_number ;
typedef  int /*<<< orphan*/  avl_tree_lock ;
typedef  int /*<<< orphan*/  RRDVAR ;

/* Variables and functions */
 int /*<<< orphan*/  D_VARIABLES ; 
 char NAN ; 
 int RRDVAR_OPTION_ALLOCATED ; 
 int RRDVAR_OPTION_CUSTOM_HOST_VAR ; 
 int /*<<< orphan*/  RRDVAR_TYPE_CALCULATED ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static RRDVAR *FUNC9(const char *scope, avl_tree_lock *tree_lock, const char *name) {
    calculated_number *v = FUNC0(1, sizeof(calculated_number));
    *v = NAN;

    RRDVAR *rv = FUNC3(scope, tree_lock, name, RRDVAR_TYPE_CALCULATED, RRDVAR_OPTION_CUSTOM_HOST_VAR|RRDVAR_OPTION_ALLOCATED, v);
    if(FUNC8(!rv)) {
        FUNC2(v);
        FUNC1(D_VARIABLES, "Requested variable '%s' already exists - possibly 2 plugins are updating it at the same time.", name);

        char *variable = FUNC7(name);
        FUNC4(variable);
        uint32_t hash = FUNC6(variable);

        // find the existing one to return it
        rv = FUNC5(tree_lock, variable, hash);

        FUNC2(variable);
    }

    return rv;
}