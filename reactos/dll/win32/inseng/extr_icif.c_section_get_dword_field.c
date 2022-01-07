
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int dummy; } ;
struct inf_section {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int TRUE ;
 struct inf_value* inf_get_value (struct inf_section*,char const*) ;
 int value_get_dword_field (struct inf_value*,int,int *,int ) ;

__attribute__((used)) static BOOL section_get_dword_field(struct inf_section *inf_sec, const char *key, int field, DWORD *value, DWORD def)
{
    struct inf_value *inf_val;

    inf_val = inf_get_value(inf_sec, key);
    if (!inf_val)
    {
        *value = def;
        return TRUE;
    }

    return value_get_dword_field(inf_val, field, value, def);
}
