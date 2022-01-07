
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dtype; } ;
struct TYPE_5__ {int ndatums; int copiable_size; TYPE_3__** datums; } ;
typedef int Size ;
typedef int PLpgSQL_var ;
typedef int PLpgSQL_rec ;
typedef TYPE_1__ PLpgSQL_function ;
typedef int PLpgSQL_datum ;


 int MAXALIGN (int) ;



 TYPE_3__** palloc (int) ;
 TYPE_3__** plpgsql_Datums ;
 int plpgsql_nDatums ;

__attribute__((used)) static void
plpgsql_finish_datums(PLpgSQL_function *function)
{
 Size copiable_size = 0;
 int i;

 function->ndatums = plpgsql_nDatums;
 function->datums = palloc(sizeof(PLpgSQL_datum *) * plpgsql_nDatums);
 for (i = 0; i < plpgsql_nDatums; i++)
 {
  function->datums[i] = plpgsql_Datums[i];


  switch (function->datums[i]->dtype)
  {
   case 128:
   case 130:
    copiable_size += MAXALIGN(sizeof(PLpgSQL_var));
    break;
   case 129:
    copiable_size += MAXALIGN(sizeof(PLpgSQL_rec));
    break;
   default:
    break;
  }
 }
 function->copiable_size = copiable_size;
}
