
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mustContinue; int member_2; int member_1; int member_0; } ;
typedef int PVOID ;
typedef int PKULL_M_TOKEN_ENUM_CALLBACK ;
typedef TYPE_1__ KULL_M_TOKEN_ENUM_DATA ;
typedef int BOOL ;


 int FALSE ;
 int NT_SUCCESS (int ) ;
 int TOKEN_DUPLICATE ;
 int TOKEN_QUERY ;
 int TRUE ;
 int kull_m_handle_getHandlesOfType (int ,char*,int,int ,TYPE_1__*) ;
 int kull_m_process_getProcessInformation (int ,TYPE_1__*) ;
 int kull_m_token_getTokens_handles_callback ;
 int kull_m_token_getTokens_process_callback ;

BOOL kull_m_token_getTokens(PKULL_M_TOKEN_ENUM_CALLBACK callBack, PVOID pvArg)
{
 BOOL status = FALSE;
 KULL_M_TOKEN_ENUM_DATA data = {callBack, pvArg, TRUE};
 if(status = NT_SUCCESS(kull_m_process_getProcessInformation(kull_m_token_getTokens_process_callback, &data)))
  if(data.mustContinue)
   status = NT_SUCCESS(kull_m_handle_getHandlesOfType(kull_m_token_getTokens_handles_callback, L"Token", TOKEN_QUERY | TOKEN_DUPLICATE, 0, &data));
 return status;
}
