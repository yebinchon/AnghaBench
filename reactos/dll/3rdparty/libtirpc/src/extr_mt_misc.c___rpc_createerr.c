
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_createerr {int dummy; } ;


 int TlsAlloc () ;
 int free (struct rpc_createerr*) ;
 scalar_t__ malloc (int) ;
 int memset (struct rpc_createerr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rce_key ;
 struct rpc_createerr rpc_createerr ;
 scalar_t__ thr_getspecific (int) ;
 scalar_t__ thr_setspecific (int,void*) ;
 int tsd_lock ;

struct rpc_createerr *
__rpc_createerr()
{
 struct rpc_createerr *rce_addr;

 mutex_lock(&tsd_lock);
 if (rce_key == -1)
  rce_key = TlsAlloc();
 mutex_unlock(&tsd_lock);

 rce_addr = (struct rpc_createerr *)thr_getspecific(rce_key);
 if (!rce_addr) {
  rce_addr = (struct rpc_createerr *)
   malloc(sizeof (struct rpc_createerr));
  if (!rce_addr ||
      thr_setspecific(rce_key, (void *) rce_addr) == 0) {
   if (rce_addr)
    free(rce_addr);
   return (&rpc_createerr);
  }
  memset(rce_addr, 0, sizeof (struct rpc_createerr));
 }
 return (rce_addr);
}
