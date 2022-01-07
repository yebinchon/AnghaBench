
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBufferRef ;


 int * av_buffer_ref (int *) ;

__attribute__((used)) static void ref_buffer(bool *ok, AVBufferRef **dst)
{
    if (*dst) {
        *dst = av_buffer_ref(*dst);
        if (!*dst)
            *ok = 0;
    }
}
