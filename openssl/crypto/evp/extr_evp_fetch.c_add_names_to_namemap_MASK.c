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
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_EVP ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  EVP_R_BAD_ALGORITHM_NAME ; 
 int /*<<< orphan*/  EVP_R_CONFLICTING_ALGORITHM_NAME ; 
 char const NAME_SEPARATOR ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC4 (char const*,char const) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(OSSL_NAMEMAP *namemap,
                                const char *names)
{
    const char *p, *q;
    size_t l;
    int id = 0;

    /* Check that we have a namemap and that there is at least one name */
    if (namemap == NULL) {
        FUNC0(ERR_LIB_EVP, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    /*
     * Check that no name is an empty string, and that all names have at
     * most one numeric identity together.
     */
    for (p = names; *p != '\0'; p = (q == NULL ? p + l : q + 1)) {
        int this_id;

        if ((q = FUNC4(p, NAME_SEPARATOR)) == NULL)
            l = FUNC5(p);       /* offset to \0 */
        else
            l = q - p;           /* offset to the next separator */

        this_id = FUNC3(namemap, p, l);

        if (*p == '\0' || *p == NAME_SEPARATOR) {
            FUNC0(ERR_LIB_EVP, EVP_R_BAD_ALGORITHM_NAME);
            return 0;
        }
        if (id == 0)
            id = this_id;
        else if (this_id != 0 && this_id != id) {
            FUNC1(ERR_LIB_EVP, EVP_R_CONFLICTING_ALGORITHM_NAME,
                           "\"%.*s\" has an existing different identity %d (from \"%s\")",
                           l, p, this_id, names);
            return 0;
        }
    }

    /* Now that we have checked, register all names */
    for (p = names; *p != '\0'; p = (q == NULL ? p + l : q + 1)) {
        int this_id;

        if ((q = FUNC4(p, NAME_SEPARATOR)) == NULL)
            l = FUNC5(p);       /* offset to \0 */
        else
            l = q - p;           /* offset to the next separator */

        this_id = FUNC2(namemap, id, p, l);
        if (id == 0)
            id = this_id;
        else if (this_id != id) {
            FUNC1(ERR_LIB_EVP, ERR_R_INTERNAL_ERROR,
                           "Got id %d when expecting %d", this_id, id);
            return 0;
        }
    }

    return id;
}