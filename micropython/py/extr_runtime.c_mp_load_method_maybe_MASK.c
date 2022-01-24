#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_12__ {TYPE_2__* locals_dict; int /*<<< orphan*/  (* attr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * iternext; } ;
typedef  TYPE_3__ mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_map_t ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_4__ mp_map_elem_t ;
struct TYPE_10__ {int /*<<< orphan*/ * type; } ;
struct TYPE_11__ {int /*<<< orphan*/  map; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_OBJ_NULL ; 
 int /*<<< orphan*/  MP_QSTR___class__ ; 
 int /*<<< orphan*/  MP_QSTR___next__ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ mp_builtin_next_obj ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_type_dict ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(mp_obj_t obj, qstr attr, mp_obj_t *dest) {
    // clear output to indicate no attribute/method found yet
    dest[0] = MP_OBJ_NULL;
    dest[1] = MP_OBJ_NULL;

    // get the type
    mp_obj_type_t *type = FUNC5(obj);

    // look for built-in names
#if MICROPY_CPYTHON_COMPAT
    if (attr == MP_QSTR___class__) {
        // a.__class__ is equivalent to type(a)
        dest[0] = MP_OBJ_FROM_PTR(type);
    } else
#endif
    if (attr == MP_QSTR___next__ && type->iternext != NULL) {
        dest[0] = FUNC0(&mp_builtin_next_obj);
        dest[1] = obj;

    } else if (type->attr != NULL) {
        // this type can do its own load, so call it
        type->attr(obj, attr, dest);

    } else if (type->locals_dict != NULL) {
        // generic method lookup
        // this is a lookup in the object (ie not class or type)
        FUNC2(type->locals_dict->base.type == &mp_type_dict); // MicroPython restriction, for now
        mp_map_t *locals_map = &type->locals_dict->map;
        mp_map_elem_t *elem = FUNC4(locals_map, FUNC1(attr), MP_MAP_LOOKUP);
        if (elem != NULL) {
            FUNC3(obj, type, elem->value, dest);
        }
    }
}