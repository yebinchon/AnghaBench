
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ hToken; int ptid; int member_0; } ;
typedef int PVOID ;
typedef scalar_t__ (* PKULL_M_TOKEN_ENUM_CALLBACK ) (scalar_t__,int ,int ) ;
typedef TYPE_1__ KULL_M_TOKEN_LIST ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ FALSE ;
 int LocalFree (TYPE_1__*) ;
 scalar_t__ TRUE ;
 scalar_t__ kull_m_token_getTokens (int ,TYPE_1__*) ;
 int kull_m_token_getTokensUnique_callback ;

BOOL kull_m_token_getTokensUnique(PKULL_M_TOKEN_ENUM_CALLBACK callBack, PVOID pvArg)
{
 BOOL status = FALSE, mustContinue = TRUE;
 KULL_M_TOKEN_LIST list = {0}, *cur, *tmp;
 if(status = kull_m_token_getTokens(kull_m_token_getTokensUnique_callback, &list))
 {
  for(cur = &list; cur && mustContinue; cur = cur->next)
   mustContinue = callBack(cur->hToken, cur->ptid, pvArg);

  for(cur = &list; cur; cur = tmp)
  {
   if(cur->hToken)
    CloseHandle(cur->hToken);
   tmp = cur->next;
   if(cur != &list)
    LocalFree(cur);
  }
 }
 return status;
}
