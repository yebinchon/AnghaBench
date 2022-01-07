
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decl_info {int dummy; } ;
struct signal_info {int signalling; struct decl_info func; int mutex; int callbacks; int * next; } ;
typedef int pthread_mutexattr_t ;


 int LOG_ERROR ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int bfree (struct signal_info*) ;
 int blog (int ,char*) ;
 struct signal_info* bmalloc (int) ;
 int da_init (int ) ;
 int decl_info_free (struct decl_info*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

__attribute__((used)) static inline struct signal_info *signal_info_create(struct decl_info *info)
{
 pthread_mutexattr_t attr;
 struct signal_info *si;

 if (pthread_mutexattr_init(&attr) != 0)
  return ((void*)0);
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return ((void*)0);

 si = bmalloc(sizeof(struct signal_info));

 si->func = *info;
 si->next = ((void*)0);
 si->signalling = 0;
 da_init(si->callbacks);

 if (pthread_mutex_init(&si->mutex, &attr) != 0) {
  blog(LOG_ERROR, "Could not create signal");

  decl_info_free(&si->func);
  bfree(si);
  return ((void*)0);
 }

 return si;
}
