
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * splan; scalar_t__ nplans; int ident; } ;
typedef TYPE_1__ EPlan ;


 scalar_t__ malloc (int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strdup (char*) ;

__attribute__((used)) static EPlan *
find_plan(char *ident, EPlan **eplan, int *nplans)
{
 EPlan *newp;
 int i;

 if (*nplans > 0)
 {
  for (i = 0; i < *nplans; i++)
  {
   if (strcmp((*eplan)[i].ident, ident) == 0)
    break;
  }
  if (i != *nplans)
   return (*eplan + i);
  *eplan = (EPlan *) realloc(*eplan, (i + 1) * sizeof(EPlan));
  newp = *eplan + i;
 }
 else
 {
  newp = *eplan = (EPlan *) malloc(sizeof(EPlan));
  (*nplans) = i = 0;
 }

 newp->ident = strdup(ident);
 newp->nplans = 0;
 newp->splan = ((void*)0);
 (*nplans)++;

 return newp;
}
