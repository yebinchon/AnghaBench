
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ refcnt; int lock; int * bz_qlog; int * bz_file; } ;
typedef TYPE_1__ LoggerHandle ;


 int BZ2_bzWrite (int*,int *,int *,size_t) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void lh_log(LoggerHandle* h, uint8_t* data, size_t data_size, bool in_qlog) {
  pthread_mutex_lock(&h->lock);
  assert(h->refcnt > 0);
  int bzerror;
  BZ2_bzWrite(&bzerror, h->bz_file, data, data_size);

  if (in_qlog && h->bz_qlog != ((void*)0)) {
    BZ2_bzWrite(&bzerror, h->bz_qlog, data, data_size);
  }
  pthread_mutex_unlock(&h->lock);
}
