#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pin_obj_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ mp_obj_dict_t ;
typedef  int /*<<< orphan*/  mp_map_t ;
struct TYPE_6__ {scalar_t__ value; } ;
typedef  TYPE_2__ mp_map_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  const* FUNC0 (scalar_t__) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const pin_obj_t *FUNC2(const mp_obj_dict_t *named_pins, mp_obj_t name) {
    const mp_map_t *named_map = &named_pins->map;
    mp_map_elem_t *named_elem = FUNC1((mp_map_t*)named_map, name, MP_MAP_LOOKUP);
    if (named_elem != NULL && named_elem->value != MP_OBJ_NULL) {
        return FUNC0(named_elem->value);
    }
    return NULL;
}