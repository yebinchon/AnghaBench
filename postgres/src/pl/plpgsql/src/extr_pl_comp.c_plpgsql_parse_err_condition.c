
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* label; scalar_t__ sqlerrstate; } ;
struct TYPE_5__ {char* condname; struct TYPE_5__* next; scalar_t__ sqlerrstate; } ;
typedef TYPE_1__ PLpgSQL_condition ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 TYPE_4__* exception_label_map ;
 TYPE_1__* palloc (int) ;
 scalar_t__ strcmp (char*,char*) ;

PLpgSQL_condition *
plpgsql_parse_err_condition(char *condname)
{
 int i;
 PLpgSQL_condition *new;
 PLpgSQL_condition *prev;
 if (strcmp(condname, "others") == 0)
 {
  new = palloc(sizeof(PLpgSQL_condition));
  new->sqlerrstate = 0;
  new->condname = condname;
  new->next = ((void*)0);
  return new;
 }

 prev = ((void*)0);
 for (i = 0; exception_label_map[i].label != ((void*)0); i++)
 {
  if (strcmp(condname, exception_label_map[i].label) == 0)
  {
   new = palloc(sizeof(PLpgSQL_condition));
   new->sqlerrstate = exception_label_map[i].sqlerrstate;
   new->condname = condname;
   new->next = prev;
   prev = new;
  }
 }

 if (!prev)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("unrecognized exception condition \"%s\"",
      condname)));

 return prev;
}
