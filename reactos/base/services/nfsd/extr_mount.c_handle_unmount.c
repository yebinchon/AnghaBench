
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root_ref; } ;
typedef TYPE_1__ nfs41_upcall ;


 int ERROR_SUCCESS ;
 int nfs41_root_deref (int ) ;

__attribute__((used)) static int handle_unmount(nfs41_upcall *upcall)
{

    nfs41_root_deref(upcall->root_ref);
    return ERROR_SUCCESS;
}
