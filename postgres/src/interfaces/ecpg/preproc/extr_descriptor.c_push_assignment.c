
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assignment {int value; scalar_t__ variable; struct assignment* next; } ;
typedef enum ECPGdtype { ____Placeholder_ECPGdtype } ECPGdtype ;


 struct assignment* assignments ;
 scalar_t__ mm_alloc (int) ;
 int strcpy (scalar_t__,char*) ;
 int strlen (char*) ;

void
push_assignment(char *var, enum ECPGdtype value)
{
 struct assignment *new = (struct assignment *) mm_alloc(sizeof(struct assignment));

 new->next = assignments;
 new->variable = mm_alloc(strlen(var) + 1);
 strcpy(new->variable, var);
 new->value = value;
 assignments = new;
}
