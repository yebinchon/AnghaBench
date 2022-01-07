
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int root_ref; } ;
typedef TYPE_1__ nfs41_upcall ;


 int ERROR_SUCCESS ;
 int dprintf (int,char*,int ) ;

__attribute__((used)) static int parse_unmount(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    dprintf(1, "parsing NFS41_UNMOUNT: root=%p\n", upcall->root_ref);
    return ERROR_SUCCESS;
}
