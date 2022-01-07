
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int copy_string (char**,char const*) ;
 int heap_free (char*) ;
 char* inf_value_get_value (struct inf_value*) ;
 char* next_part (char**,int ) ;

__attribute__((used)) static BOOL value_get_str_field(struct inf_value *inf_val, int field, char **value, const char *def)
{
    char *line, *str, *next;
    int i = 0;

    line = inf_value_get_value(inf_val);
    if (!line) return FALSE;

    str = line;
    do
    {
        i++;
        next = next_part(&str, TRUE);

        if (field == i)
        {
            BOOL ret = copy_string(value, str);
            heap_free(line);
            return ret;
        }

        str = next;
    } while (str);

    return copy_string(value, def);
}
