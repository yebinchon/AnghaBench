
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pin_obj_t ;
typedef scalar_t__ mp_obj_t ;
typedef int mp_map_t ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ mp_map_elem_t ;


 int MP_MAP_LOOKUP ;
 scalar_t__ MP_OBJ_FROM_PTR (int const*) ;
 scalar_t__ MP_OBJ_NULL ;
 int const* MP_OBJ_TO_PTR (scalar_t__) ;
 scalar_t__ MP_STATE_PORT (int ) ;
 int PRINT_REPR ;
 int PRINT_STR ;
 scalar_t__ mp_call_function_1 (scalar_t__,scalar_t__) ;
 scalar_t__ mp_const_none ;
 TYPE_1__* mp_map_lookup (int *,scalar_t__,int ) ;
 int * mp_obj_dict_get_map (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_obj_print (scalar_t__,int ) ;
 int mp_obj_str_get_str (scalar_t__) ;
 int mp_raise_ValueError (char*) ;
 int mp_type_ValueError ;
 int nlr_raise (int ) ;
 int pin_board_pins_locals_dict ;
 scalar_t__ pin_class_debug ;
 int pin_class_map_dict ;
 int pin_class_mapper ;
 int pin_cpu_pins_locals_dict ;
 int * pin_find_named_pin (int *,scalar_t__) ;
 int pin_type ;
 int printf (char*) ;

const pin_obj_t *pin_find(mp_obj_t user_obj) {
    const pin_obj_t *pin_obj;


    if (mp_obj_is_type(user_obj, &pin_type)) {
        pin_obj = MP_OBJ_TO_PTR(user_obj);
        if (pin_class_debug) {
            printf("Pin map passed pin ");
            mp_obj_print(MP_OBJ_FROM_PTR(pin_obj), PRINT_STR);
            printf("\n");
        }
        return pin_obj;
    }

    if (MP_STATE_PORT(pin_class_mapper) != mp_const_none) {
        mp_obj_t o = mp_call_function_1(MP_STATE_PORT(pin_class_mapper), user_obj);
        if (o != mp_const_none) {
            if (!mp_obj_is_type(o, &pin_type)) {
                mp_raise_ValueError("Pin.mapper didn't return a Pin object");
            }
            if (pin_class_debug) {
                printf("Pin.mapper maps ");
                mp_obj_print(user_obj, PRINT_REPR);
                printf(" to ");
                mp_obj_print(o, PRINT_STR);
                printf("\n");
            }
            return MP_OBJ_TO_PTR(o);
        }


    }

    if (MP_STATE_PORT(pin_class_map_dict) != mp_const_none) {
        mp_map_t *pin_map_map = mp_obj_dict_get_map(MP_STATE_PORT(pin_class_map_dict));
        mp_map_elem_t *elem = mp_map_lookup(pin_map_map, user_obj, MP_MAP_LOOKUP);
        if (elem != ((void*)0) && elem->value != MP_OBJ_NULL) {
            mp_obj_t o = elem->value;
            if (pin_class_debug) {
                printf("Pin.map_dict maps ");
                mp_obj_print(user_obj, PRINT_REPR);
                printf(" to ");
                mp_obj_print(o, PRINT_STR);
                printf("\n");
            }
            return MP_OBJ_TO_PTR(o);
        }
    }


    pin_obj = pin_find_named_pin(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            printf("Pin.board maps ");
            mp_obj_print(user_obj, PRINT_REPR);
            printf(" to ");
            mp_obj_print(MP_OBJ_FROM_PTR(pin_obj), PRINT_STR);
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
            mp_obj_print(MP_OBJ_FROM_PTR(pin_obj), PRINT_STR);
            printf("\n");
        }
        return pin_obj;
    }

    nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "Pin(%s) doesn't exist", mp_obj_str_get_str(user_obj)));
}
