
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bufs; int* reading; int cb_cookie; int (* release_cb ) (int ,int) ;} ;
typedef TYPE_1__ TBuffer ;


 int assert (int) ;
 int printf (char*,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void tbuffer_release_locked(TBuffer *tb, int idx) {
  assert(idx < tb->num_bufs);
  if (!tb->reading[idx]) {
    printf("!! releasing tbuffer we aren't reading %d\n", idx);
  }

  if (tb->release_cb) {
    tb->release_cb(tb->cb_cookie, idx);
  }

  tb->reading[idx] = 0;
}
