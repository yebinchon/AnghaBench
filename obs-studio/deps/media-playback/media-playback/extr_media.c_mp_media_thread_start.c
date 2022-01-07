
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opaque; int (* stop_cb ) (int ) ;} ;
typedef TYPE_1__ mp_media_t ;


 int mp_media_thread (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void *mp_media_thread_start(void *opaque)
{
 mp_media_t *m = opaque;

 if (!mp_media_thread(m)) {
  if (m->stop_cb) {
   m->stop_cb(m->opaque);
  }
 }

 return ((void*)0);
}
