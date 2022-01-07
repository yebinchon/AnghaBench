
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int reconnecting; int retry_time; int exit_event; } ;


 scalar_t__ ETIMEDOUT ;
 int LOG_DEBUG ;
 int blog (int ,char*) ;
 scalar_t__ coreaudio_init (struct coreaudio_data*) ;
 scalar_t__ os_event_timedwait (int ,int ) ;

__attribute__((used)) static void *reconnect_thread(void *param)
{
 struct coreaudio_data *ca = param;

 ca->reconnecting = 1;

 while (os_event_timedwait(ca->exit_event, ca->retry_time) ==
        ETIMEDOUT) {
  if (coreaudio_init(ca))
   break;
 }

 blog(LOG_DEBUG, "coreaudio: exit the reconnect thread");
 ca->reconnecting = 0;
 return ((void*)0);
}
