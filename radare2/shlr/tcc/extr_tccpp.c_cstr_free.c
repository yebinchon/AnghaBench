
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_allocated; } ;
typedef TYPE_1__ CString ;


 int cstr_new (TYPE_1__*) ;
 int free (int ) ;

void cstr_free(CString *cstr)
{
 free (cstr->data_allocated);
 cstr_new (cstr);
}
