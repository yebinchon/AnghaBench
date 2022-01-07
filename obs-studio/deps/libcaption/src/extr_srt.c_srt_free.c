
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srt_t ;


 int vtt_free (int *) ;

void srt_free(srt_t* srt)
{
    vtt_free(srt);
}
