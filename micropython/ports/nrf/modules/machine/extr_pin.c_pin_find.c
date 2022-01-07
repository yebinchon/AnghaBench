
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_21__ {size_t pin; } ;
typedef TYPE_1__ pin_obj_t ;
typedef TYPE_1__ const* mp_obj_t ;
typedef int mp_map_t ;
struct TYPE_22__ {TYPE_1__* value; } ;
typedef TYPE_3__ mp_map_elem_t ;


 int MP_MAP_LOOKUP ;
 size_t MP_OBJ_SMALL_INT_VALUE (TYPE_1__ const*) ;
 TYPE_1__ const* MP_STATE_PORT (int ) ;
 int PRINT_REPR ;
 int PRINT_STR ;
 TYPE_1__ const* machine_board_pin_obj ;
 size_t machine_pin_num_of_board_pins ;
 TYPE_1__* mp_call_function_1 (TYPE_1__ const*,TYPE_1__ const*) ;
 TYPE_1__ const* mp_const_none ;
 TYPE_3__* mp_map_lookup (int *,TYPE_1__ const*,int ) ;
 int * mp_obj_dict_get_map (TYPE_1__ const*) ;
 scalar_t__ mp_obj_is_small_int (TYPE_1__ const*) ;
 scalar_t__ mp_obj_is_type (TYPE_1__ const*,int *) ;
 int mp_obj_print (TYPE_1__ const*,int ) ;
 int mp_raise_ValueError (char*) ;
 int pin_board_pins_locals_dict ;
 scalar_t__ pin_class_debug ;
 int pin_class_map_dict ;
 int pin_class_mapper ;
 int pin_cpu_pins_locals_dict ;
 TYPE_1__* pin_find_named_pin (int *,TYPE_1__ const*) ;
 int pin_type ;
 int printf (char*) ;

const pin_obj_t *pin_find(mp_obj_t user_obj) {
    const pin_obj_t *pin_obj;

    if (mp_obj_is_small_int(user_obj)) {
        uint8_t value = MP_OBJ_SMALL_INT_VALUE(user_obj);
        for (uint8_t i = 0; i < machine_pin_num_of_board_pins; i++) {
            if (machine_board_pin_obj[i].pin == value) {
                return &machine_board_pin_obj[i];
            }
        }
    }


    if (mp_obj_is_type(user_obj, &pin_type)) {
        pin_obj = user_obj;
        if (pin_class_debug) {
            printf("Pin map passed pin ");
            mp_obj_print((mp_obj_t)pin_obj, PRINT_STR);
            printf("\n");
        }
        return pin_obj;
    }

    if (MP_STATE_PORT(pin_class_mapper) != mp_const_none) {
        pin_obj = mp_call_function_1(MP_STATE_PORT(pin_class_mapper), user_obj);
        if (pin_obj != mp_const_none) {
            if (!mp_obj_is_type(pin_obj, &pin_type)) {
                mp_raise_ValueError("Pin.mapper didn't return a Pin object");
            }
            if (pin_class_debug) {
                printf("Pin.mapper maps ");
                mp_obj_print(user_obj, PRINT_REPR);
                printf(" to ");
                mp_obj_print((mp_obj_t)pin_obj, PRINT_STR);
                printf("\n");
            }
            return pin_obj;
        }


    }

    if (MP_STATE_PORT(pin_class_map_dict) != mp_const_none) {
        mp_map_t *pin_map_map = mp_obj_dict_get_map(MP_STATE_PORT(pin_class_map_dict));
        mp_map_elem_t *elem = mp_map_lookup(pin_map_map, user_obj, MP_MAP_LOOKUP);
        if (elem != ((void*)0) && elem->value != ((void*)0)) {
            pin_obj = elem->value;
            if (pin_class_debug) {
                printf("Pin.map_dict maps ");
                mp_obj_print(user_obj, PRINT_REPR);
                printf(" to ");
                mp_obj_print((mp_obj_t)pin_obj, PRINT_STR);
                printf("\n");
            }
            return pin_obj;
        }
    }


    pin_obj = pin_find_named_pin(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            printf("Pin.board maps ");
            mp_obj_print(user_obj, PRINT_REPR);
            printf(" to ");
            mp_obj_print((mp_obj_t)pin_obj, PRINT_STR);
            printf("\n");
        }
        return pin_obj;
    }


    pin_obj = pin_find_named_pin(&pin_cpu_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            printf("Pin.cpu maps ");
            mp_obj_print(user_obj, PRINT_REPR);
            printf(" to ");
            mp_obj_print((mp_obj_t)pin_obj, PRINT_STR);
            printf("\n");
        }
        return pin_obj;
    }

    mp_raise_ValueError("not a valid pin identifier");
}
