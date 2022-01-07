
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {int num_streams; int d_user; int wakeup; int lock; int * streams; } ;


 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static void demux_dealloc(struct demux_internal *in)
{
    for (int n = 0; n < in->num_streams; n++)
        talloc_free(in->streams[n]);
    pthread_mutex_destroy(&in->lock);
    pthread_cond_destroy(&in->wakeup);
    talloc_free(in->d_user);
}
