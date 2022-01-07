
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int binary; } ;
typedef TYPE_1__ PGresult ;



int
PQbinaryTuples(const PGresult *res)
{
 if (!res)
  return 0;
 return res->binary;
}
