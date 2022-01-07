
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;


 int EBML_UINT_INVALID ;
 int ebml_read_length (int *) ;
 int stream_read_char (int *) ;

uint64_t ebml_read_uint(stream_t *s)
{
    uint64_t len, value = 0;

    len = ebml_read_length(s);
    if (len == EBML_UINT_INVALID || len > 8)
        return EBML_UINT_INVALID;

    while (len--)
        value = (value << 8) | stream_read_char(s);

    return value;
}
