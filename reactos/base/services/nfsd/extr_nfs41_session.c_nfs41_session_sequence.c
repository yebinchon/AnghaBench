
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int session_id; } ;
typedef TYPE_1__ nfs41_session ;
struct TYPE_7__ {int sa_cachethis; int sa_sessionid; int sa_highest_slotid; int sa_sequenceid; int sa_slotid; } ;
typedef TYPE_2__ nfs41_sequence_args ;
typedef int bool_t ;


 int nfs41_session_get_slot (TYPE_1__*,int *,int *,int *) ;

void nfs41_session_sequence(
    nfs41_sequence_args *args,
    nfs41_session *session,
    bool_t cachethis)
{
    nfs41_session_get_slot(session, &args->sa_slotid,
        &args->sa_sequenceid, &args->sa_highest_slotid);
    args->sa_sessionid = session->session_id;
    args->sa_cachethis = cachethis;
}
