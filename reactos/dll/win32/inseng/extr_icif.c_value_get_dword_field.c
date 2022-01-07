
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int atoi (char*) ;
 int heap_free (char*) ;
 int value_get_str_field (struct inf_value*,int,char**,int *) ;

__attribute__((used)) static BOOL value_get_dword_field(struct inf_value *inf_val, int field, DWORD *value, DWORD def)
{
    char *value_str;
    BOOL ret;

    ret = value_get_str_field(inf_val, field, &value_str, ((void*)0));
    if (!ret) return FALSE;
    if (!value_str)
    {
        *value = def;
        return TRUE;
    }

    *value = atoi(value_str);
    heap_free(value_str);

    return TRUE;
}
