
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int MP_ARRAY_SIZE (int*) ;
 int* mp_irq_priorities ;
 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;

uint mp_irq_translate_priority (uint priority) {
    if (priority < 1 || priority > MP_ARRAY_SIZE(mp_irq_priorities)) {
        mp_raise_ValueError(mpexception_value_invalid_arguments);
    }
    return mp_irq_priorities[priority - 1];
}
