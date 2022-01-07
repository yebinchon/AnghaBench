
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* release_cb ) (void*,int) ;void* cb_cookie; } ;
typedef TYPE_1__ Pool ;


 int pool_init (TYPE_1__*,int) ;

void pool_init2(Pool *s, int num_bufs,
  void (*release_cb)(void* c, int idx), void* cb_cookie) {

  pool_init(s, num_bufs);
  s->cb_cookie = cb_cookie;
  s->release_cb = release_cb;

}
