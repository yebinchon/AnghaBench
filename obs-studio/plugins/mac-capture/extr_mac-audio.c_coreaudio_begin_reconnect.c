
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int reconnect_thread; scalar_t__ reconnecting; } ;


 int LOG_WARNING ;
 int blog (int ,char*,int) ;
 int pthread_create (int *,int *,int ,struct coreaudio_data*) ;
 int reconnect_thread ;

__attribute__((used)) static void coreaudio_begin_reconnect(struct coreaudio_data *ca)
{
 int ret;

 if (ca->reconnecting)
  return;

 ret = pthread_create(&ca->reconnect_thread, ((void*)0), reconnect_thread, ca);
 if (ret != 0)
  blog(LOG_WARNING,
       "[coreaudio_begin_reconnect] failed to "
       "create thread, error code: %d",
       ret);
}
