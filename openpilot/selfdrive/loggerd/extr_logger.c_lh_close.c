
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcnt; int lock; int lock_path; scalar_t__ log_file; scalar_t__ qlog_file; int * bz_qlog; int * bz_file; } ;
typedef TYPE_1__ LoggerHandle ;


 int BZ2_bzWriteClose (int*,int *,int ,int *,int *) ;
 int assert (int) ;
 int fclose (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int unlink (int ) ;

void lh_close(LoggerHandle* h) {
  pthread_mutex_lock(&h->lock);
  assert(h->refcnt > 0);
  h->refcnt--;
  if (h->refcnt == 0) {
    if (h->bz_file){
      int bzerror;
      BZ2_bzWriteClose(&bzerror, h->bz_file, 0, ((void*)0), ((void*)0));
      h->bz_file = ((void*)0);
    }
    if (h->bz_qlog){
      int bzerror;
      BZ2_bzWriteClose(&bzerror, h->bz_qlog, 0, ((void*)0), ((void*)0));
      h->bz_qlog = ((void*)0);
    }
    if (h->qlog_file) fclose(h->qlog_file);
    fclose(h->log_file);
    unlink(h->lock_path);
    pthread_mutex_unlock(&h->lock);
    pthread_mutex_destroy(&h->lock);
    return;
  }
  pthread_mutex_unlock(&h->lock);
}
