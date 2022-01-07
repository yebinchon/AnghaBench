
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 int strlen (char*) ;

void
rm_trailing_chars(char *str, const char *what_to_delete)
{
    bool modified;
    do
    {
        const int len = strlen(str);
        modified = 0;
        if (len > 0)
        {
            char *cp = str + (len - 1);
            if (strchr(what_to_delete, *cp) != ((void*)0))
            {
                *cp = '\0';
                modified = 1;
            }
        }
    } while (modified);
}
