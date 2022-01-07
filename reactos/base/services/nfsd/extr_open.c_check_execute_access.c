
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int path; } ;
struct TYPE_5__ {TYPE_1__ path; int file; int session; } ;
typedef TYPE_2__ nfs41_open_state ;


 int ACCESS4_EXECUTE ;
 int ACCESS4_READ ;
 int ERROR_ACCESS_DENIED ;
 int dprintf (int,char*,...) ;
 int eprintf (char*,int ,...) ;
 int nfs41_access (int ,int *,int,int*,int*) ;
 int nfs_error_string (int) ;

__attribute__((used)) static int check_execute_access(nfs41_open_state *state)
{
    uint32_t supported, access;
    int status = nfs41_access(state->session, &state->file,
        ACCESS4_EXECUTE | ACCESS4_READ, &supported, &access);
    if (status) {
        eprintf("nfs41_access() failed with %s for %s\n",
            nfs_error_string(status), state->path.path);
        status = ERROR_ACCESS_DENIED;
    } else if ((supported & ACCESS4_EXECUTE) == 0) {


        if ((supported & ACCESS4_READ) == 0 || (access & ACCESS4_READ) == 0) {
            eprintf("server can't verify execute access, and user does "
                "not have read access to file %s\n", state->path.path);
            status = ERROR_ACCESS_DENIED;
        }
    } else if ((access & ACCESS4_EXECUTE) == 0) {
        dprintf(1, "user does not have execute access to file %s\n",
            state->path.path);
        status = ERROR_ACCESS_DENIED;
    } else
        dprintf(2, "user has execute access to file\n");
    return status;
}
