
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int stream_read_partial (int *,void*,int) ;

int stream_read(stream_t *s, void *mem, int total)
{
    int len = total;
    while (len > 0) {
        int read = stream_read_partial(s, mem, len);
        if (read <= 0)
            break;
        mem = (char *)mem + read;
        len -= read;
    }
    total -= len;
    return total;
}
