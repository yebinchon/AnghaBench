
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bufs; scalar_t__* refcnt; int cb_cookie; int (* release_cb ) (int ,int) ;} ;
typedef TYPE_1__ Pool ;


 int assert (int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void pool_release_locked(Pool *s, int idx) {


  assert(idx >= 0 && idx < s->num_bufs);

  assert(s->refcnt[idx] > 0);
  s->refcnt[idx]--;


  if (s->refcnt[idx] == 0 && s->release_cb) {

    s->release_cb(s->cb_cookie, idx);
  }
}
