
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int atoi (char*) ;
 int heap_free (char*) ;
 char* next_part (char**,int ) ;
 int section_get_str (struct inf_section*,char*,char**,int *) ;

__attribute__((used)) static BOOL read_version_entry(struct inf_section *section, DWORD *ret_ver, DWORD *ret_build)
{
    DWORD version = 0;
    DWORD build = 0;
    char *line, *str, *next;

    if (!section_get_str(section, "Version", &line, ((void*)0)))
        return FALSE;
    if (!line) goto done;

    str = line;

    next = next_part(&str, TRUE);
    version |= atoi(str) << 16;
    if (!next) goto done;
    str = next;

    next = next_part(&str, TRUE);
    version |= atoi(str) & 0xffff;
    if (!next) goto done;
    str = next;

    next = next_part(&str, TRUE);
    build |= atoi(str) << 16;
    if (!next) goto done;
    str = next;

    next_part(&str, TRUE);
    build |= atoi(str) & 0xffff;

done:
    heap_free(line);
    *ret_ver = version;
    *ret_build = build;
    return TRUE;
}
