
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;
struct descriptor {struct descriptor* next; int name; } ;


 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME ;
 int ECPG_UNKNOWN_DESCRIPTOR ;
 struct sqlca_t* ECPGget_sqlca () ;
 int descriptor_free (struct descriptor*) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_raise (int,int ,int ,char const*) ;
 struct descriptor* get_descriptors () ;
 int set_descriptors (struct descriptor*) ;
 scalar_t__ strcmp (char const*,int ) ;

bool
ECPGdeallocate_desc(int line, const char *name)
{
 struct descriptor *desc;
 struct descriptor *prev;
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_raise(line, ECPG_OUT_OF_MEMORY,
       ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }

 ecpg_init_sqlca(sqlca);
 for (desc = get_descriptors(), prev = ((void*)0); desc; prev = desc, desc = desc->next)
 {
  if (strcmp(name, desc->name) == 0)
  {
   if (prev)
    prev->next = desc->next;
   else
    set_descriptors(desc->next);
   descriptor_free(desc);
   return 1;
  }
 }
 ecpg_raise(line, ECPG_UNKNOWN_DESCRIPTOR, ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME, name);
 return 0;
}
