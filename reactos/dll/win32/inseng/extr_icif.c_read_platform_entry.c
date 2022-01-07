
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int PLATFORM_ALL ;
 int PLATFORM_MILLEN ;
 int PLATFORM_NT4 ;
 int PLATFORM_NT5 ;
 int PLATFORM_WIN98 ;
 int TRUE ;
 int debugstr_a (char*) ;
 int heap_free (char*) ;
 char* next_part (char**,int ) ;
 int section_get_str (struct inf_section*,char*,char**,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static BOOL read_platform_entry(struct inf_section *section, DWORD *ret_platform)
{
    DWORD platform = PLATFORM_ALL;
    char *line, *str, *next;

    if (!section_get_str(section, "Platform", &line, ((void*)0)))
        return FALSE;
    if (!line) goto done;

    platform = 0;
    str = line;
    do
    {
        next = next_part(&str, TRUE);

        if (strcasecmp(str, "Win95") == 0)
            platform |= PLATFORM_WIN98;
        else if (strcasecmp(str, "Win98") == 0)
            platform |= PLATFORM_WIN98;
        else if (strcasecmp(str, "NT4") == 0)
            platform |= PLATFORM_NT4;
        else if (strcasecmp(str, "NT5") == 0)
            platform |= PLATFORM_NT5;
        else if (strcasecmp(str, "NT4Alpha") == 0)
            platform |= PLATFORM_NT4;
        else if (strcasecmp(str, "NT5Alpha") == 0)
            platform |= PLATFORM_NT5;
        else if (strcasecmp(str, "Millen") == 0)
            platform |= PLATFORM_MILLEN;
        else
            FIXME("Unknown platform: %s\n", debugstr_a(str));

        str = next;
    } while (str);

done:
    heap_free(line);
    *ret_platform = platform;
    return TRUE;
}
