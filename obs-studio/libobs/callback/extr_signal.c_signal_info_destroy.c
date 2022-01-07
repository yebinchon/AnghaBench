
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_info {int callbacks; int func; int mutex; } ;


 int bfree (struct signal_info*) ;
 int da_free (int ) ;
 int decl_info_free (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static inline void signal_info_destroy(struct signal_info *si)
{
 if (si) {
  pthread_mutex_destroy(&si->mutex);
  decl_info_free(&si->func);
  da_free(si->callbacks);
  bfree(si);
 }
}
