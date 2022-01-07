
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int dummy; } ;
struct inf_section {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int copy_string (char**,char const*) ;
 struct inf_value* inf_get_value (struct inf_section*,char const*) ;
 char* inf_value_get_value (struct inf_value*) ;

__attribute__((used)) static BOOL section_get_str(struct inf_section *inf_sec, const char *key, char **value, const char *def)
{
    struct inf_value *inf_val;

    inf_val = inf_get_value(inf_sec, key);
    if (!inf_val) return copy_string(value, def);

    *value = inf_value_get_value(inf_val);
    if (!*value) return FALSE;

    return TRUE;
}
