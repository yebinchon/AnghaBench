
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int TokenAppContainer; } ;
typedef int TOKEN_APPCONTAINER_INFORMATION ;
typedef TYPE_1__* PTOKEN_APPCONTAINER_INFORMATION ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int ConvertSidToStringSidW (int ,int **) ;
 scalar_t__ GetSidLengthRequired (int) ;
 int GetTokenInformation (int ,int ,TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int TOKEN_QUERY ;
 int TokenAppContainerSid ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (scalar_t__) ;

wchar_t *get_app_sid(HANDLE process)
{
 wchar_t *ret = ((void*)0);
 DWORD size_ret;
 BOOL success;
 HANDLE token;

 if (OpenProcessToken(process, TOKEN_QUERY, &token)) {
  DWORD info_len = GetSidLengthRequired(12) +
     sizeof(TOKEN_APPCONTAINER_INFORMATION);

  PTOKEN_APPCONTAINER_INFORMATION info = malloc(info_len);

  success = GetTokenInformation(token, TokenAppContainerSid, info,
           info_len, &size_ret);
  if (success)
   ConvertSidToStringSidW(info->TokenAppContainer, &ret);

  free(info);
  CloseHandle(token);
 }

 return ret;
}
