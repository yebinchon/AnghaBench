#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_6__ {size_t alloc; TYPE_1__* table; } ;
typedef  TYPE_2__ mp_map_t ;
struct TYPE_7__ {TYPE_2__ map; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,size_t) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(mp_obj_t module) {
    FUNC0("import all %p\n", module);

    // TODO: Support __all__
    mp_map_t *map = &FUNC2(module)->map;
    for (size_t i = 0; i < map->alloc; i++) {
        if (FUNC1(map, i)) {
            // Entry in module global scope may be generated programmatically
            // (and thus be not a qstr for longer names). Avoid turning it in
            // qstr if it has '_' and was used exactly to save memory.
            const char *name = FUNC4(map->table[i].key);
            if (*name != '_') {
                qstr qname = FUNC3(map->table[i].key);
                FUNC5(qname, map->table[i].value);
            }
        }
    }
}