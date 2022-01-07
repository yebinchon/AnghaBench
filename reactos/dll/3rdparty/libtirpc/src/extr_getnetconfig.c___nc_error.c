
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_key_t ;
typedef int mutex_t ;


 int TLS_OUT_OF_INDEXES ;
 int TlsAlloc () ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ thr_getspecific (int) ;
 scalar_t__ thr_setspecific (int,void*) ;

__attribute__((used)) static int *
__nc_error()
{
 extern mutex_t nc_lock;
 extern thread_key_t nc_key;
 static int nc_error = 0;
 int error, *nc_addr;






 if (nc_key == -1) {
  error = 0;
  mutex_lock(&nc_lock);
  if (nc_key == -1)
   error = nc_key = TlsAlloc();
  mutex_unlock(&nc_lock);
  if (error == TLS_OUT_OF_INDEXES)
   return (&nc_error);
 }
 if ((nc_addr = (int *)thr_getspecific(nc_key)) == ((void*)0)) {
  nc_addr = (int *)malloc(sizeof (int *));
  if (thr_setspecific(nc_key, (void *) nc_addr) == 0) {
   if (nc_addr)
    free(nc_addr);
   return (&nc_error);
  }
  *nc_addr = 0;
 }
 return (nc_addr);
}
