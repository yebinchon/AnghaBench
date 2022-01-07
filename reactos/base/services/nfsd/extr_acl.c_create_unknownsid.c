
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WELL_KNOWN_SID_TYPE ;
typedef int * PSID ;
typedef scalar_t__ DWORD ;


 int ACLLVL ;
 int CreateWellKnownSid (int ,int *,int *,scalar_t__*) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INTERNAL_ERROR ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int dprintf (int ,char*,int ,int,int,scalar_t__) ;
 int eprintf (char*,int) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;

__attribute__((used)) static int create_unknownsid(WELL_KNOWN_SID_TYPE type, PSID *sid,
                             DWORD *sid_len)
{
    int status;
    *sid_len = 0;
    *sid = ((void*)0);

    status = CreateWellKnownSid(type, ((void*)0), *sid, sid_len);
    dprintf(ACLLVL, "create_unknownsid: CreateWellKnownSid type %d returned %d "
            "GetLastError %d sid len %d needed\n", type, status,
            GetLastError(), *sid_len);
    if (status)
        return ERROR_INTERNAL_ERROR;
    status = GetLastError();
    if (status != ERROR_INSUFFICIENT_BUFFER)
        return status;
    *sid = malloc(*sid_len);
    if (*sid == ((void*)0))
        return ERROR_INSUFFICIENT_BUFFER;
    status = CreateWellKnownSid(type, ((void*)0), *sid, sid_len);
    if (status)
        return ERROR_SUCCESS;
    free(*sid);
    status = GetLastError();
    eprintf("create_unknownsid: CreateWellKnownSid failed with %d\n", status);
    return status;
}
