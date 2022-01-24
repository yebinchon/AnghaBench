#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {TYPE_2__* client; } ;
typedef  TYPE_3__ nfs41_session ;
struct TYPE_11__ {scalar_t__ sec_flavor; scalar_t__ type; } ;
typedef  TYPE_4__ nfs41_secinfo_info ;
typedef  int /*<<< orphan*/  machname ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_12__ {int /*<<< orphan*/ * cl_auth; } ;
struct TYPE_9__ {TYPE_1__* rpc; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_7__* rpc; scalar_t__ sec_flavor; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  server_name; } ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 scalar_t__ AUTH_SYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_NETWORK_UNREACHABLE ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int MAX_SECINFOS ; 
 scalar_t__ RPCSEC_GSS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(nfs41_session *session, uint32_t op,
                               nfs41_secinfo_info *secinfo)
{
    AUTH *auth = NULL;
    int status = ERROR_NETWORK_UNREACHABLE, i;
    uint32_t sec_flavor;

    for (i = 0; i < MAX_SECINFOS; i++) { 
        if (!secinfo[i].sec_flavor && !secinfo[i].type)
            goto out;
        if (secinfo[i].sec_flavor == RPCSEC_GSS) {
            auth = FUNC2(session->client->rpc->rpc, 
                        session->client->rpc->server_name, secinfo[i].type);
            if (auth == NULL) {
                FUNC4("handle_wrongsecinfo_noname: authsspi_create_default for "
                        "gsstype %s failed\n", FUNC6(secinfo[i].type));
                continue;
            }
            sec_flavor = secinfo[i].type;
        } else {
            char machname[MAXHOSTNAMELEN + 1];
            gid_t gids[1];
            if (FUNC5(machname, sizeof(machname)) == -1) {
                FUNC4("nfs41_rpc_clnt_create: gethostname failed\n");
                continue;
            }
            machname[sizeof(machname) - 1] = '\0';
            auth = FUNC3(machname, session->client->rpc->uid, 
                        session->client->rpc->gid, 0, gids);
            if (auth == NULL) {
                FUNC4("handle_wrongsecinfo_noname: authsys_create failed\n");
                continue;
            }
            sec_flavor = AUTH_SYS;
        }
        FUNC0(&session->client->rpc->lock);
        session->client->rpc->sec_flavor = sec_flavor;
        session->client->rpc->rpc->cl_auth = auth;
        FUNC1(&session->client->rpc->lock);
        status = 0;
        break;
    }
out:
    return status;
}