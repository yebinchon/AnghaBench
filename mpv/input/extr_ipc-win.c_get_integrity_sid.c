
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Sid; } ;
struct TYPE_7__ {TYPE_1__ Label; } ;
typedef TYPE_2__ TOKEN_MANDATORY_LABEL ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int ConvertSidToStringSidA (int ,char**) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int GetTokenInformation (scalar_t__,int ,TYPE_2__*,int ,int *) ;
 int OpenProcessToken (int ,int ,scalar_t__*) ;
 int TOKEN_QUERY ;
 int TokenIntegrityLevel ;
 int talloc_free (TYPE_2__*) ;
 TYPE_2__* talloc_size (int *,int ) ;

__attribute__((used)) static char *get_integrity_sid(void)
{
    char *ssid = ((void*)0);
    TOKEN_MANDATORY_LABEL *info = ((void*)0);
    HANDLE t;
    if (!OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &t))
        goto done;

    DWORD info_len;
    if (!GetTokenInformation(t, TokenIntegrityLevel, ((void*)0), 0, &info_len) &&
        GetLastError() != ERROR_INSUFFICIENT_BUFFER)
        goto done;

    info = talloc_size(((void*)0), info_len);
    if (!GetTokenInformation(t, TokenIntegrityLevel, info, info_len, &info_len))
        goto done;
    if (!info->Label.Sid)
        goto done;

    ConvertSidToStringSidA(info->Label.Sid, &ssid);
done:
    if (t)
        CloseHandle(t);
    talloc_free(info);
    return ssid;
}
