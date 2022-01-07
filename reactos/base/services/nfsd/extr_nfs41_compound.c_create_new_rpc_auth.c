
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {TYPE_2__* client; } ;
typedef TYPE_3__ nfs41_session ;
struct TYPE_11__ {scalar_t__ sec_flavor; scalar_t__ type; } ;
typedef TYPE_4__ nfs41_secinfo_info ;
typedef int machname ;
typedef int gid_t ;
struct TYPE_12__ {int * cl_auth; } ;
struct TYPE_9__ {TYPE_1__* rpc; } ;
struct TYPE_8__ {int lock; TYPE_7__* rpc; scalar_t__ sec_flavor; int gid; int uid; int server_name; } ;
typedef int AUTH ;


 scalar_t__ AUTH_SYS ;
 int AcquireSRWLockExclusive (int *) ;
 int ERROR_NETWORK_UNREACHABLE ;
 int MAXHOSTNAMELEN ;
 int MAX_SECINFOS ;
 scalar_t__ RPCSEC_GSS ;
 int ReleaseSRWLockExclusive (int *) ;
 int * authsspi_create_default (TYPE_7__*,int ,scalar_t__) ;
 int * authsys_create (char*,int ,int ,int ,int *) ;
 int eprintf (char*,...) ;
 int gethostname (char*,int) ;
 int gssauth_string (scalar_t__) ;

__attribute__((used)) static int create_new_rpc_auth(nfs41_session *session, uint32_t op,
                               nfs41_secinfo_info *secinfo)
{
    AUTH *auth = ((void*)0);
    int status = ERROR_NETWORK_UNREACHABLE, i;
    uint32_t sec_flavor;

    for (i = 0; i < MAX_SECINFOS; i++) {
        if (!secinfo[i].sec_flavor && !secinfo[i].type)
            goto out;
        if (secinfo[i].sec_flavor == RPCSEC_GSS) {
            auth = authsspi_create_default(session->client->rpc->rpc,
                        session->client->rpc->server_name, secinfo[i].type);
            if (auth == ((void*)0)) {
                eprintf("handle_wrongsecinfo_noname: authsspi_create_default for "
                        "gsstype %s failed\n", gssauth_string(secinfo[i].type));
                continue;
            }
            sec_flavor = secinfo[i].type;
        } else {
            char machname[MAXHOSTNAMELEN + 1];
            gid_t gids[1];
            if (gethostname(machname, sizeof(machname)) == -1) {
                eprintf("nfs41_rpc_clnt_create: gethostname failed\n");
                continue;
            }
            machname[sizeof(machname) - 1] = '\0';
            auth = authsys_create(machname, session->client->rpc->uid,
                        session->client->rpc->gid, 0, gids);
            if (auth == ((void*)0)) {
                eprintf("handle_wrongsecinfo_noname: authsys_create failed\n");
                continue;
            }
            sec_flavor = AUTH_SYS;
        }
        AcquireSRWLockExclusive(&session->client->rpc->lock);
        session->client->rpc->sec_flavor = sec_flavor;
        session->client->rpc->rpc->cl_auth = auth;
        ReleaseSRWLockExclusive(&session->client->rpc->lock);
        status = 0;
        break;
    }
out:
    return status;
}
