#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {void* value; } ;
typedef  TYPE_1__ NAME_VALUE ;
typedef  TYPE_2__ DICTIONARY ;

/* Variables and functions */
 int DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE ; 
 int /*<<< orphan*/  D_DICTIONARY ; 
 int /*<<< orphan*/  D_REGISTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,char const*,void*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int) ; 

void *FUNC11(DICTIONARY *dict, const char *name, void *value, size_t value_len) {
    FUNC0(D_DICTIONARY, "SET dictionary entry with name '%s'.", name);

    uint32_t hash = FUNC9(name);

    FUNC4(dict);

    NAME_VALUE *nv = FUNC2(dict, name, hash);
    if(FUNC10(!nv)) {
        FUNC0(D_DICTIONARY, "Dictionary entry with name '%s' not found. Creating a new one.", name);

        nv = FUNC1(dict, name, value, value_len, hash);
        if(FUNC10(!nv))
            FUNC5("Cannot create name_value.");
    }
    else {
        FUNC0(D_DICTIONARY, "Dictionary entry with name '%s' found. Changing its value.", name);

        if(dict->flags & DICTIONARY_FLAG_VALUE_LINK_DONT_CLONE) {
            FUNC0(D_REGISTRY, "Dictionary: linking value to '%s'", name);
            nv->value = value;
        }
        else {
            FUNC0(D_REGISTRY, "Dictionary: cloning value to '%s'", name);

            // copy the new value without breaking
            // any other thread accessing the same entry
            void *new = FUNC7(value_len),
                    *old = nv->value;

            FUNC8(new, value, value_len);
            nv->value = new;

            FUNC0(D_REGISTRY, "Dictionary: freeing old value of '%s'", name);
            FUNC6(old);
        }
    }

    FUNC3(dict);

    return nv->value;
}