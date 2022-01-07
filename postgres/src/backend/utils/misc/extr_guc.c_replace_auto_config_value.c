
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ignore; int applied; struct TYPE_7__* next; scalar_t__ sourceline; struct TYPE_7__* filename; int * errmsg; struct TYPE_7__* value; struct TYPE_7__* name; } ;
typedef TYPE_1__ ConfigVariable ;


 scalar_t__ guc_name_compare (TYPE_1__*,char const*) ;
 TYPE_1__* palloc (int) ;
 int pfree (TYPE_1__*) ;
 void* pstrdup (char const*) ;

__attribute__((used)) static void
replace_auto_config_value(ConfigVariable **head_p, ConfigVariable **tail_p,
        const char *name, const char *value)
{
 ConfigVariable *item,
      *next,
      *prev = ((void*)0);






 for (item = *head_p; item != ((void*)0); item = next)
 {
  next = item->next;
  if (guc_name_compare(item->name, name) == 0)
  {

   if (prev)
    prev->next = next;
   else
    *head_p = next;
   if (next == ((void*)0))
    *tail_p = prev;

   pfree(item->name);
   pfree(item->value);
   pfree(item->filename);
   pfree(item);
  }
  else
   prev = item;
 }


 if (value == ((void*)0))
  return;


 item = palloc(sizeof *item);
 item->name = pstrdup(name);
 item->value = pstrdup(value);
 item->errmsg = ((void*)0);
 item->filename = pstrdup("");
 item->sourceline = 0;
 item->ignore = 0;
 item->applied = 0;
 item->next = ((void*)0);

 if (*head_p == ((void*)0))
  *head_p = item;
 else
  (*tail_p)->next = item;
 *tail_p = item;
}
