#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  values_index; } ;
struct TYPE_8__ {char* name; void* value; scalar_t__ hash; } ;
typedef  TYPE_1__ NAME_VALUE ;
typedef  TYPE_2__ DICTIONARY ;

/* Variables and functions */
 int DICTIONARY_FLAG_NAME_LINK_DONT_CLONE ; 
 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ; 
 int /*<<< orphan*/  D_DICTIONARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,size_t) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static NAME_VALUE *FUNC11(DICTIONARY *dict, const char *name, void *value, size_t value_len, uint32_t hash) {
    FUNC4(D_DICTIONARY, "Creating name value entry for name '%s'.", name);

    NAME_VALUE *nv = FUNC3(1, sizeof(NAME_VALUE));

    if(dict->flags & DICTIONARY_FLAG_NAME_LINK_DONT_CLONE)
        nv->name = (char *)name;
    else {
        nv->name = FUNC9(name);
    }

    nv->hash = (hash)?hash:FUNC8(nv->name);

    if(dict->flags & DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE)
        nv->value = value;
    else {
        nv->value = FUNC6(value_len);
        FUNC7(nv->value, value, value_len);
    }

    // index it
    FUNC1(dict);
    if(FUNC10(FUNC2(&((dict)->values_index), (avl *)(nv)) != (avl *)nv))
        FUNC5("dictionary: INTERNAL ERROR: duplicate insertion to dictionary.");

    FUNC0(dict);

    return nv;
}