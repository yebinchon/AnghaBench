
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RecoveryConflictReason ;
 int errdetail (char*) ;

__attribute__((used)) static int
errdetail_recovery_conflict(void)
{
 switch (RecoveryConflictReason)
 {
  case 133:
   errdetail("User was holding shared buffer pin for too long.");
   break;
  case 131:
   errdetail("User was holding a relation lock for too long.");
   break;
  case 128:
   errdetail("User was or might have been using tablespace that must be dropped.");
   break;
  case 130:
   errdetail("User query might have needed to see row versions that must be removed.");
   break;
  case 129:
   errdetail("User transaction caused buffer deadlock with recovery.");
   break;
  case 132:
   errdetail("User was connected to a database that must be dropped.");
   break;
  default:
   break;

 }

 return 0;
}
