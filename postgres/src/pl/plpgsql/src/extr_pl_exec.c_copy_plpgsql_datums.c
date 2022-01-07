
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int dtype; } ;
struct TYPE_9__ {int ndatums; TYPE_3__** datums; } ;
struct TYPE_8__ {int copiable_size; TYPE_3__** datums; } ;
typedef int PLpgSQL_var ;
typedef int PLpgSQL_rec ;
typedef TYPE_1__ PLpgSQL_function ;
typedef TYPE_2__ PLpgSQL_execstate ;
typedef TYPE_3__ PLpgSQL_datum ;


 int Assert (int) ;
 int ERROR ;
 int MAXALIGN (int) ;






 int elog (int ,char*,int) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 char* palloc (int) ;

__attribute__((used)) static void
copy_plpgsql_datums(PLpgSQL_execstate *estate,
     PLpgSQL_function *func)
{
 int ndatums = estate->ndatums;
 PLpgSQL_datum **indatums;
 PLpgSQL_datum **outdatums;
 char *workspace;
 char *ws_next;
 int i;


 estate->datums = (PLpgSQL_datum **)
  palloc(sizeof(PLpgSQL_datum *) * ndatums);





 workspace = palloc(func->copiable_size);
 ws_next = workspace;


 indatums = func->datums;
 outdatums = estate->datums;
 for (i = 0; i < ndatums; i++)
 {
  PLpgSQL_datum *indatum = indatums[i];
  PLpgSQL_datum *outdatum;


  switch (indatum->dtype)
  {
   case 128:
   case 132:
    outdatum = (PLpgSQL_datum *) ws_next;
    memcpy(outdatum, indatum, sizeof(PLpgSQL_var));
    ws_next += MAXALIGN(sizeof(PLpgSQL_var));
    break;

   case 131:
    outdatum = (PLpgSQL_datum *) ws_next;
    memcpy(outdatum, indatum, sizeof(PLpgSQL_rec));
    ws_next += MAXALIGN(sizeof(PLpgSQL_rec));
    break;

   case 129:
   case 130:
   case 133:






    outdatum = indatum;
    break;

   default:
    elog(ERROR, "unrecognized dtype: %d", indatum->dtype);
    outdatum = ((void*)0);
    break;
  }

  outdatums[i] = outdatum;
 }

 Assert(ws_next == workspace + func->copiable_size);
}
