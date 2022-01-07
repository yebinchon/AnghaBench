
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent {int dummy; } ;
struct rpcdata {scalar_t__ currentlen; char* line; int * rpcf; int * current; int domain; } ;


 scalar_t__ BUFSIZ ;
 int RPCDB ;

 int __yp_nomap ;
 struct rpcdata* _rpcdata () ;
 scalar_t__ _yp_check (int *) ;
 int * fgets (char*,scalar_t__,int *) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 struct rpcent* interpret (char*,int) ;
 int strlen (char*) ;
 int yp_first (int ,char*,int **,scalar_t__*,char**,int*) ;
 int yp_next (int ,char*,int *,scalar_t__,int **,scalar_t__*,char**,int*) ;

struct rpcent *
getrpcent()
{
 struct rpcdata *d = _rpcdata();







 if (d == 0)
  return(((void*)0));
 if (d->rpcf == ((void*)0) && (d->rpcf = fopen(RPCDB, "r")) == ((void*)0))
  return (((void*)0));

        if (fgets(d->line, BUFSIZ - 1, d->rpcf) == ((void*)0))
  return (((void*)0));
 return (interpret(d->line, strlen(d->line)));
}
