
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int) ;
 int av_strerror (int ,char*,size_t) ;

char *mp_strerror_buf(char *buf, size_t buf_size, int errnum)
{

    av_strerror(AVERROR(errnum), buf, buf_size);
    return buf;
}
