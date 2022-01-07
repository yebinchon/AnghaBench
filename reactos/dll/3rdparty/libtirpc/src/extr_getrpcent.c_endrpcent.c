
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcdata {int * rpcf; int stayopen; scalar_t__ currentlen; int * current; } ;


 scalar_t__ __yp_nomap ;
 struct rpcdata* _rpcdata () ;
 scalar_t__ _yp_check (int *) ;
 int fclose (int *) ;
 int free (int *) ;

void
endrpcent()
{
 struct rpcdata *d = _rpcdata();

 if (d == 0)
  return;
 if (d->rpcf && !d->stayopen) {
  fclose(d->rpcf);
  d->rpcf = ((void*)0);
 }
}
