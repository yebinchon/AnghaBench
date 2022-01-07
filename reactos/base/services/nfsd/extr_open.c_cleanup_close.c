
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_ref; } ;
typedef TYPE_1__ nfs41_upcall ;


 int nfs41_open_state_deref (int ) ;

__attribute__((used)) static void cleanup_close(nfs41_upcall *upcall)
{

    nfs41_open_state_deref(upcall->state_ref);
}
