
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CurrentUserId ;
 int InLocalUserIdChange () ;

void
GetUserIdAndContext(Oid *userid, bool *sec_def_context)
{
 *userid = CurrentUserId;
 *sec_def_context = InLocalUserIdChange();
}
