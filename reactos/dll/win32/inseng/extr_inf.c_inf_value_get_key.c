
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int key; } ;


 char* strdupA (int ) ;

char *inf_value_get_key(struct inf_value *value)
{
    return strdupA(value->key);
}
