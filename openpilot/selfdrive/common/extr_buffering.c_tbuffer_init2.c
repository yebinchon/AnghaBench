
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* release_cb ) (void*,int) ;void* cb_cookie; } ;
typedef TYPE_1__ TBuffer ;


 int tbuffer_init (TYPE_1__*,int,char const*) ;

void tbuffer_init2(TBuffer *tb, int num_bufs, const char* name,
                   void (*release_cb)(void* c, int idx),
                   void* cb_cookie) {

  tbuffer_init(tb, num_bufs, name);

  tb->release_cb = release_cb;
  tb->cb_cookie = cb_cookie;
}
