
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
struct module {int vsymt; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ vector_at (int *,scalar_t__) ;
 scalar_t__ vector_length (int *) ;

struct symt* symt_index2ptr(struct module* module, DWORD id)
{

    if (!id-- || id >= vector_length(&module->vsymt)) return ((void*)0);
    return *(struct symt**)vector_at(&module->vsymt, id);



}
