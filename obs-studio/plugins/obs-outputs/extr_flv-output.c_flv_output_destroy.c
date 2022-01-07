
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flv_output {int path; int mutex; } ;


 int bfree (struct flv_output*) ;
 int dstr_free (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void flv_output_destroy(void *data)
{
 struct flv_output *stream = data;

 pthread_mutex_destroy(&stream->mutex);
 dstr_free(&stream->path);
 bfree(stream);
}
