
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int retry_time; scalar_t__ no_devices; int device_uid; } ;


 int LOG_INFO ;
 int blog (int ,char*,...) ;
 int coreaudio_begin_reconnect (struct coreaudio_data*) ;
 int coreaudio_init (struct coreaudio_data*) ;

__attribute__((used)) static void coreaudio_try_init(struct coreaudio_data *ca)
{
 if (!coreaudio_init(ca)) {
  blog(LOG_INFO,
       "coreaudio: failed to find device "
       "uid: %s, waiting for connection",
       ca->device_uid);

  ca->retry_time = 2000;

  if (ca->no_devices)
   blog(LOG_INFO, "coreaudio: no device found");
  else
   coreaudio_begin_reconnect(ca);
 }
}
