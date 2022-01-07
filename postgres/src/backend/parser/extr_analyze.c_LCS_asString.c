
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockClauseStrength ;


 int Assert (int) ;






const char *
LCS_asString(LockClauseStrength strength)
{
 switch (strength)
 {
  case 128:
   Assert(0);
   break;
  case 132:
   return "FOR KEY SHARE";
  case 130:
   return "FOR SHARE";
  case 131:
   return "FOR NO KEY UPDATE";
  case 129:
   return "FOR UPDATE";
 }
 return "FOR some";
}
