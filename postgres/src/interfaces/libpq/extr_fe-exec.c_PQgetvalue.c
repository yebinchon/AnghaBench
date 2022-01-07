
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** tuples; } ;
struct TYPE_5__ {char* value; } ;
typedef TYPE_2__ PGresult ;


 int check_tuple_field_number (TYPE_2__ const*,int,int) ;

char *
PQgetvalue(const PGresult *res, int tup_num, int field_num)
{
 if (!check_tuple_field_number(res, tup_num, field_num))
  return ((void*)0);
 return res->tuples[tup_num][field_num].value;
}
