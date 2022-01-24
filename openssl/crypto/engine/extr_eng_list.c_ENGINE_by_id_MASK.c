#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* id; int flags; int /*<<< orphan*/  struct_ref; struct TYPE_10__* next; } ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* ENGINESDIR ; 
 int ENGINE_FLAGS_BY_ID_COPY ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_BY_ID ; 
 int /*<<< orphan*/  ENGINE_R_NO_SUCH_ENGINE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_engine_lock_init ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* engine_list_head ; 
 int /*<<< orphan*/  engine_lock_init ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  global_engine_lock ; 
 char* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

ENGINE *FUNC12(const char *id)
{
    ENGINE *iterator;
    char *load_dir = NULL;
    if (id == NULL) {
        FUNC5(ENGINE_F_ENGINE_BY_ID, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    if (!FUNC7(&engine_lock_init, do_engine_lock_init)) {
        FUNC5(ENGINE_F_ENGINE_BY_ID, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC1(global_engine_lock);
    iterator = engine_list_head;
    while (iterator && (FUNC11(id, iterator->id) != 0))
        iterator = iterator->next;
    if (iterator != NULL) {
        /*
         * We need to return a structural reference. If this is an ENGINE
         * type that returns copies, make a duplicate - otherwise increment
         * the existing ENGINE's reference count.
         */
        if (iterator->flags & ENGINE_FLAGS_BY_ID_COPY) {
            ENGINE *cp = FUNC4();
            if (cp == NULL)
                iterator = NULL;
            else {
                FUNC8(cp, iterator);
                iterator = cp;
            }
        } else {
            iterator->struct_ref++;
            FUNC9(iterator, 0, 1);
        }
    }
    FUNC0(global_engine_lock);
    if (iterator != NULL)
        return iterator;
    /*
     * Prevent infinite recursion if we're looking for the dynamic engine.
     */
    if (FUNC11(id, "dynamic")) {
        if ((load_dir = FUNC10("OPENSSL_ENGINES")) == NULL)
            load_dir = ENGINESDIR;
        iterator = FUNC12("dynamic");
        if (!iterator || !FUNC2(iterator, "ID", id, 0) ||
            !FUNC2(iterator, "DIR_LOAD", "2", 0) ||
            !FUNC2(iterator, "DIR_ADD",
                                    load_dir, 0) ||
            !FUNC2(iterator, "LIST_ADD", "1", 0) ||
            !FUNC2(iterator, "LOAD", NULL, 0))
            goto notfound;
        return iterator;
    }
 notfound:
    FUNC3(iterator);
    FUNC5(ENGINE_F_ENGINE_BY_ID, ENGINE_R_NO_SUCH_ENGINE);
    FUNC6(2, "id=", id);
    return NULL;
    /* EEK! Experimental code ends */
}