
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** tuples; } ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_2__ PGresult ;


 scalar_t__ NULL_LEN ;
 int check_tuple_field_number (TYPE_2__ const*,int,int) ;

int
PQgetlength(const PGresult *res, int tup_num, int field_num)
{
 if (!check_tuple_field_number(res, tup_num, field_num))
  return 0;
 if (res->tuples[tup_num][field_num].len != NULL_LEN)
  return res->tuples[tup_num][field_num].len;
 else
  return 0;
}
