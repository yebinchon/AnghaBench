
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numParameters; int noticeHooks; } ;
typedef TYPE_1__ PGresult ;


 int pqInternalNotice (int *,char*,int,int) ;

__attribute__((used)) static int
check_param_number(const PGresult *res, int param_num)
{
 if (!res)
  return 0;
 if (param_num < 0 || param_num >= res->numParameters)
 {
  pqInternalNotice(&res->noticeHooks,
       "parameter number %d is out of range 0..%d",
       param_num, res->numParameters - 1);
  return 0;
 }

 return 1;
}
