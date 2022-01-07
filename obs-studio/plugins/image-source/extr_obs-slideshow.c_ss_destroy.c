
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int da; } ;
struct slideshow {int mutex; TYPE_1__ files; int transition; } ;


 int bfree (struct slideshow*) ;
 int free_files (int *) ;
 int obs_source_release (int ) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ss_destroy(void *data)
{
 struct slideshow *ss = data;

 obs_source_release(ss->transition);
 free_files(&ss->files.da);
 pthread_mutex_destroy(&ss->mutex);
 bfree(ss);
}
