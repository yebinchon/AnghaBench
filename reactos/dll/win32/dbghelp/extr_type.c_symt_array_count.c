
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_array {int end; int start; int base_type; } ;
struct module {int dummy; } ;
typedef scalar_t__ DWORD64 ;
typedef int DWORD ;


 int TI_GET_LENGTH ;
 scalar_t__ symt_get_info (struct module*,int ,int ,scalar_t__*) ;

__attribute__((used)) static inline DWORD symt_array_count(struct module* module, const struct symt_array* array)
{
    if (array->end < 0)
    {
        DWORD64 elem_size;



        if (symt_get_info(module, array->base_type, TI_GET_LENGTH, &elem_size) && elem_size)
            return -array->end / (DWORD)elem_size;
        return 0;
    }
    return array->end - array->start + 1;
}
