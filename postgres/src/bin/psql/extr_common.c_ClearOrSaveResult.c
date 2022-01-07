
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * last_error_result; } ;
typedef int PGresult ;




 int PQclear (int *) ;
 int PQresultStatus (int *) ;
 TYPE_1__ pset ;

__attribute__((used)) static void
ClearOrSaveResult(PGresult *result)
{
 if (result)
 {
  switch (PQresultStatus(result))
  {
   case 128:
   case 129:
    if (pset.last_error_result)
     PQclear(pset.last_error_result);
    pset.last_error_result = result;
    break;

   default:
    PQclear(result);
    break;
  }
 }
}
