
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct module {int dummy; } ;
typedef int ULONG64 ;
typedef int DWORD ;


 int TI_GET_LENGTH ;
 int TI_GET_TYPE ;
 scalar_t__ symt_get_info (struct module*,struct symt const*,int ,int*) ;
 struct symt const* symt_index2ptr (struct module*,int) ;

__attribute__((used)) static void symt_get_length(struct module* module, const struct symt* symt, ULONG64* size)
{
    DWORD type_index;

    if (symt_get_info(module, symt, TI_GET_LENGTH, size) && *size)
        return;

    if (symt_get_info(module, symt, TI_GET_TYPE, &type_index) &&
        symt_get_info(module, symt_index2ptr(module, type_index), TI_GET_LENGTH, size)) return;
    *size = 0x1000;
}
