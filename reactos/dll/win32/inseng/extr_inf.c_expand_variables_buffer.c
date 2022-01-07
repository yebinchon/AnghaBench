
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int dummy; } ;


 char* get_substitution (struct inf_file*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int expand_variables_buffer(struct inf_file *inf, const char *str, char *output)
{
    const char *p, *var_start = ((void*)0);
    int var_len = 0, len = 0;
    const char *substitution;

    for (p = str; *p; p++)
    {
        if (*p != '%')
        {
            if (var_start)
                var_len++;
            else
            {
                if (output)
                    *output++ = *p;
                len++;
            }

            continue;
        }

        if (!var_start)
        {
            var_start = p;
            var_len = 0;

            continue;
        }

        if (!var_len)
        {

            if (output)
                *output++ = '%';
            len += 1;

            var_start = ((void*)0);
            continue;
        }

        substitution = get_substitution(inf, var_start + 1, var_len);
        if (!substitution)
        {
            if (output)
            {
                memcpy(output, var_start, var_len + 2);
                output += var_len + 2;
            }
            len += var_len + 2;
        }
        else
        {
            int sub_len = strlen(substitution);

            if (output)
            {
                memcpy(output, substitution, sub_len);
                output += sub_len;
            }
            len += sub_len;
        }

         var_start = ((void*)0);
    }

    if (output) *output = 0;
    return len + 1;
}
