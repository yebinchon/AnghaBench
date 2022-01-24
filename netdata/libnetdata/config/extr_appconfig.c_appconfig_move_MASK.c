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
struct section {char* name; struct config_option* values; } ;
struct config_option {int /*<<< orphan*/  name; struct config_option* next; int /*<<< orphan*/  hash; } ;
struct config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONFIG ; 
 struct config_option* FUNC0 (struct section*,struct config_option*) ; 
 struct config_option* FUNC1 (struct section*,struct config_option*) ; 
 struct config_option* FUNC2 (struct section*,char const*,int /*<<< orphan*/ ) ; 
 struct section* FUNC3 (struct config*,char const*) ; 
 struct section* FUNC4 (struct config*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct section*) ; 
 int /*<<< orphan*/  FUNC6 (struct section*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct config *root, const char *section_old, const char *name_old, const char *section_new, const char *name_new) {
    struct config_option *cv_old, *cv_new;
    int ret = -1;

    FUNC7(D_CONFIG, "request to rename config in section '%s', old name '%s', to section '%s', new name '%s'", section_old, name_old, section_new, name_new);

    struct section *co_old = FUNC4(root, section_old);
    if(!co_old) return ret;

    struct section *co_new = FUNC4(root, section_new);
    if(!co_new) co_new = FUNC3(root, section_new);

    FUNC6(co_old);
    if(co_old != co_new)
        FUNC6(co_new);

    cv_old = FUNC2(co_old, name_old, 0);
    if(!cv_old) goto cleanup;

    cv_new = FUNC2(co_new, name_new, 0);
    if(cv_new) goto cleanup;

    if(FUNC12(FUNC1(co_old, cv_old) != cv_old))
        FUNC8("INTERNAL ERROR: deletion of config '%s' from section '%s', deleted tge wrong config entry.", cv_old->name, co_old->name);

    if(co_old->values == cv_old) {
        co_old->values = cv_old->next;
    }
    else {
        struct config_option *t;
        for(t = co_old->values; t && t->next != cv_old ;t = t->next) ;
        if(!t || t->next != cv_old)
            FUNC8("INTERNAL ERROR: cannot find variable '%s' in section '%s' of the config - but it should be there.", cv_old->name, co_old->name);
        else
            t->next = cv_old->next;
    }

    FUNC9(cv_old->name);
    cv_old->name = FUNC11(name_new);
    cv_old->hash = FUNC10(cv_old->name);

    cv_new = cv_old;
    cv_new->next = co_new->values;
    co_new->values = cv_new;

    if(FUNC12(FUNC0(co_new, cv_old) != cv_old))
        FUNC8("INTERNAL ERROR: re-indexing of config '%s' in section '%s', already exists.", cv_old->name, co_new->name);

    ret = 0;

cleanup:
    if(co_old != co_new)
        FUNC5(co_new);
    FUNC5(co_old);
    return ret;
}