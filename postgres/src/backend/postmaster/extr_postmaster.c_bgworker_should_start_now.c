
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BgWorkerStartTime ;


 int BgWorkerStart_ConsistentState ;
 int BgWorkerStart_PostmasterStart ;
 int BgWorkerStart_RecoveryFinished ;
 int pmState ;

__attribute__((used)) static bool
bgworker_should_start_now(BgWorkerStartTime start_time)
{
 switch (pmState)
 {
  case 137:
  case 129:
  case 133:
  case 134:
  case 131:
  case 128:
  case 130:
   break;

  case 135:
   if (start_time == BgWorkerStart_RecoveryFinished)
    return 1;


  case 139:
   if (start_time == BgWorkerStart_ConsistentState)
    return 1;


  case 136:
  case 132:
  case 138:
   if (start_time == BgWorkerStart_PostmasterStart)
    return 1;


 }

 return 0;
}
