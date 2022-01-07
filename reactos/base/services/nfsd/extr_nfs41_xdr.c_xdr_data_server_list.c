
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {size_t count; TYPE_2__* arr; } ;
typedef TYPE_1__ pnfs_data_server_list ;
struct TYPE_8__ {int addrs; int lock; int * client; } ;
typedef TYPE_2__ pnfs_data_server ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int InitializeSRWLock (int *) ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,size_t) ;
 TYPE_2__* realloc (TYPE_2__*,size_t) ;
 int xdr_multi_addr (int *,int *) ;
 int xdr_u_int32_t (int *,size_t*) ;

__attribute__((used)) static bool_t xdr_data_server_list(
    XDR *xdr,
    pnfs_data_server_list *servers)
{
    uint32_t i, count;

    if (!xdr_u_int32_t(xdr, &count))
        return FALSE;

    if (count && count != servers->count) {
        pnfs_data_server *tmp;


        for (i = 0; i < servers->count; i++)
            servers->arr[i].client = ((void*)0);

        tmp = realloc(servers->arr, count * sizeof(pnfs_data_server));
        if (tmp == ((void*)0))
            return FALSE;
        servers->arr = tmp;
        ZeroMemory(servers->arr, count * sizeof(pnfs_data_server));
        for (i = servers->count; i < count; i++)
            InitializeSRWLock(&servers->arr[i].lock);
        servers->count = count;
    }

    for (i = 0; i < servers->count; i++) {
        if (!xdr_multi_addr(xdr, &servers->arr[i].addrs))
            return FALSE;
    }
    return TRUE;
}
