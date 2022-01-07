
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;


 scalar_t__ stream_read_partial (int *,int*,int) ;

int stream_read_char_fallback(stream_t *s)
{
    uint8_t c;
    return stream_read_partial(s, &c, 1) ? c : -256;
}
