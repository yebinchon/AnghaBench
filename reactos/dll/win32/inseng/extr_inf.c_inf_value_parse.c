
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {char* key; char* value; int entry; struct inf_section* section; } ;
struct inf_section {int values; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 int TRUE ;
 struct inf_value* heap_alloc_zero (int) ;
 int list_add_tail (int *,int *) ;
 char* strchr (char*,char) ;
 char* trim (char*,int *,int ) ;

__attribute__((used)) static HRESULT inf_value_parse(struct inf_section *sec, char *line)
{
    struct inf_value *key_val;
    char *key, *value, *del;

    del = strchr(line, '=');
    if (!del) return S_OK;

    *del = 0;
    key = line;
    value = del + 1;

    key = trim(key, ((void*)0), FALSE);
    value = trim(value, ((void*)0), TRUE);

    key_val = heap_alloc_zero(sizeof(*key_val));
    if (!key_val) return E_OUTOFMEMORY;

    key_val->key = key;
    key_val->value = value;
    key_val->section = sec;

    list_add_tail(&sec->values, &key_val->entry);
    return S_OK;
}
