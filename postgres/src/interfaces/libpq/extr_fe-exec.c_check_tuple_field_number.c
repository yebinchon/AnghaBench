
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntups; int numAttributes; int noticeHooks; } ;
typedef TYPE_1__ PGresult ;


 int pqInternalNotice (int *,char*,int,int) ;

__attribute__((used)) static int
check_tuple_field_number(const PGresult *res,
       int tup_num, int field_num)
{
 if (!res)
  return 0;
 if (tup_num < 0 || tup_num >= res->ntups)
 {
  pqInternalNotice(&res->noticeHooks,
       "row number %d is out of range 0..%d",
       tup_num, res->ntups - 1);
  return 0;
 }
 if (field_num < 0 || field_num >= res->numAttributes)
 {
  pqInternalNotice(&res->noticeHooks,
       "column number %d is out of range 0..%d",
       field_num, res->numAttributes - 1);
  return 0;
 }
 return 1;
}
