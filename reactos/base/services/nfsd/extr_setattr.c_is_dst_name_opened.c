
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* client; } ;
typedef TYPE_2__ nfs41_session ;
struct TYPE_5__ {int lock; int opens; } ;
struct TYPE_7__ {TYPE_1__ state; } ;
typedef TYPE_3__ nfs41_client ;
typedef int nfs41_abs_path ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 int TRUE ;
 scalar_t__ list_search (int *,int *,int ) ;
 int nfs41_abs_path_compare ;

__attribute__((used)) static int is_dst_name_opened(nfs41_abs_path *dst_path, nfs41_session *dst_session)
{
    int status;
    nfs41_client *client = dst_session->client;

    EnterCriticalSection(&client->state.lock);
    if (list_search(&client->state.opens, dst_path, nfs41_abs_path_compare))
        status = TRUE;
    else
        status = FALSE;
    LeaveCriticalSection(&client->state.lock);

    return status;
}
