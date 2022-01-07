
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;
struct descriptor {int count; struct descriptor* name; int result; int * items; int next; } ;


 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 struct sqlca_t* ECPGget_sqlca () ;
 int PQmakeEmptyPGresult (int *,int ) ;
 struct descriptor* ecpg_alloc (int,int) ;
 int ecpg_free (struct descriptor*) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_raise (int,int ,int ,int *) ;
 int get_descriptors () ;
 int set_descriptors (struct descriptor*) ;
 int strcpy (struct descriptor*,char const*) ;
 int strlen (char const*) ;

bool
ECPGallocate_desc(int line, const char *name)
{
 struct descriptor *new;
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_raise(line, ECPG_OUT_OF_MEMORY,
       ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }

 ecpg_init_sqlca(sqlca);
 new = (struct descriptor *) ecpg_alloc(sizeof(struct descriptor), line);
 if (!new)
  return 0;
 new->next = get_descriptors();
 new->name = ecpg_alloc(strlen(name) + 1, line);
 if (!new->name)
 {
  ecpg_free(new);
  return 0;
 }
 new->count = -1;
 new->items = ((void*)0);
 new->result = PQmakeEmptyPGresult(((void*)0), 0);
 if (!new->result)
 {
  ecpg_free(new->name);
  ecpg_free(new);
  ecpg_raise(line, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }
 strcpy(new->name, name);
 set_descriptors(new);
 return 1;
}
