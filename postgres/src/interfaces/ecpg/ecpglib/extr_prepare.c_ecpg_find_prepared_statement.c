
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prepared_statement {int name; struct prepared_statement* next; } ;
struct connection {struct prepared_statement* prep_stmts; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct prepared_statement *
ecpg_find_prepared_statement(const char *name,
        struct connection *con, struct prepared_statement **prev_)
{
 struct prepared_statement *this,
      *prev;

 for (this = con->prep_stmts, prev = ((void*)0);
   this != ((void*)0);
   prev = this, this = this->next)
 {
  if (strcmp(this->name, name) == 0)
  {
   if (prev_)
    *prev_ = prev;
   return this;
  }
 }
 return ((void*)0);
}
