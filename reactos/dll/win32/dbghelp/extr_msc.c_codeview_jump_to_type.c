
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codeview_type_parse {size_t num; void const* table; int* offset; } ;
typedef size_t DWORD ;


 size_t FIRST_DEFINABLE_TYPE ;

__attribute__((used)) static inline const void* codeview_jump_to_type(const struct codeview_type_parse* ctp, DWORD idx)
{
    if (idx < FIRST_DEFINABLE_TYPE) return ((void*)0);
    idx -= FIRST_DEFINABLE_TYPE;
    return (idx >= ctp->num) ? ((void*)0) : (ctp->table + ctp->offset[idx]);
}
