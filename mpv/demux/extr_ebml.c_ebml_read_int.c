
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;
typedef int int64_t ;


 int EBML_INT_INVALID ;
 int EBML_UINT_INVALID ;
 int ebml_read_length (int *) ;
 int stream_read_char (int *) ;

int64_t ebml_read_int(stream_t *s)
{
    uint64_t value = 0;
    uint64_t len;
    int l;

    len = ebml_read_length(s);
    if (len == EBML_UINT_INVALID || len > 8)
        return EBML_INT_INVALID;
    if (!len)
        return 0;

    len--;
    l = stream_read_char(s);
    if (l & 0x80)
        value = -1;
    value = (value << 8) | l;
    while (len--)
        value = (value << 8) | stream_read_char(s);

    return (int64_t)value;
}
