
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 int process_record_dynamic_macro (int ,int *) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    if (!process_record_dynamic_macro(keycode, record))
    {
        return 0;
    }
    return 1;
}
