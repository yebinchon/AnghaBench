
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBufferRef ;


 int MP_HANDLE_OOM (int *) ;
 int * av_buffer_ref (int *) ;
 int av_buffer_unref (int **) ;

__attribute__((used)) static void assign_bufref(AVBufferRef **dst, AVBufferRef *new)
{
    av_buffer_unref(dst);
    if (new) {
        *dst = av_buffer_ref(new);
        MP_HANDLE_OOM(*dst);
    }
}
