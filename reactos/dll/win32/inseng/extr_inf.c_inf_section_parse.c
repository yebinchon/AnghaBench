
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {char* name; int entry; int values; struct inf_file* file; } ;
struct inf_file {int sections; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 struct inf_section* heap_alloc_zero (int) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 char* strchr (char*,char) ;
 char* trim (char*,char**,int ) ;

__attribute__((used)) static HRESULT inf_section_parse(struct inf_file *inf, char *line, char *last_chr, struct inf_section **section)
{
    struct inf_section *sec;
    char *comment;
    char *name;

    if (*line != '[')
        return S_OK;

    line++;

    comment = strchr(line, ';');
    if (comment)
    {
        *comment = 0;
        line = trim(line, &last_chr, FALSE);
    }

    if (*last_chr != ']')
        return S_OK;

    *last_chr = 0;
    name = trim(line, ((void*)0), FALSE);
    if (!name) return S_OK;

    sec = heap_alloc_zero(sizeof(*sec));
    if (!sec) return E_OUTOFMEMORY;

    sec->name = name;
    sec->file = inf;
    list_init(&sec->values);

    list_add_tail(&inf->sections, &sec->entry);

    *section = sec;
    return S_OK;
}
