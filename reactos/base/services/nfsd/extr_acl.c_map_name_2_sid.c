
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SID_NAME_USE ;
typedef int * PSID ;
typedef int * LPSTR ;
typedef int LPCSTR ;
typedef int DWORD ;


 int ACLLVL ;
 int ConvertSidToStringSidA (int *,int **) ;

 int ERROR_INTERNAL_ERROR ;

 int ERROR_SUCCESS ;
 int GetLastError () ;
 int IsValidSid (int *) ;
 int LocalFree (int *) ;
 int LookupAccountName (int *,int ,int *,int *,int *,int *,int *) ;
 int WinNullSid ;
 int create_unknownsid (int ,int **,int *) ;
 int dprintf (int,char*,...) ;
 int eprintf (char*,int ,int) ;
 int free (int *) ;
 int * malloc (int ) ;

__attribute__((used)) static int map_name_2_sid(DWORD *sid_len, PSID *sid, LPCSTR name)
{
    int status = ERROR_INTERNAL_ERROR;
    SID_NAME_USE sid_type;
    LPSTR tmp_buf = ((void*)0);
    DWORD tmp = 0;

    status = LookupAccountName(((void*)0), name, ((void*)0), sid_len, ((void*)0), &tmp, &sid_type);
    dprintf(ACLLVL, "map_name_2_sid: LookupAccountName for %s returned %d "
            "GetLastError %d name len %d domain len %d\n", name, status,
            GetLastError(), *sid_len, tmp);
    if (status)
        return ERROR_INTERNAL_ERROR;

    status = GetLastError();
    switch(status) {
    case 129:
        *sid = malloc(*sid_len);
        if (*sid == ((void*)0)) {
            status = GetLastError();
            goto out;
        }
        tmp_buf = (LPSTR) malloc(tmp);
        if (tmp_buf == ((void*)0))
            goto out_free_sid;
        status = LookupAccountName(((void*)0), name, *sid, sid_len, tmp_buf,
                                    &tmp, &sid_type);
        free(tmp_buf);
        if (!status) {
            eprintf("map_name_2_sid: LookupAccountName for %s failed "
                    "with %d\n", name, GetLastError());
            goto out_free_sid;
        } else {
        }
        status = ERROR_SUCCESS;
        break;
    case 128:
        status = create_unknownsid(WinNullSid, sid, sid_len);
        if (status)
            goto out_free_sid;
    }
out:
    return status;
out_free_sid:
    status = GetLastError();
    free(*sid);
    goto out;
}
