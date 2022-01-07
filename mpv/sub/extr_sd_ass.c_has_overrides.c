
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static bool has_overrides(char *s)
{
    if (!s)
        return 0;
    return strstr(s, "\\pos") || strstr(s, "\\move") || strstr(s, "\\clip") ||
           strstr(s, "\\iclip") || strstr(s, "\\org") || strstr(s, "\\p");
}
