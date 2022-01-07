
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int stream_t ;


 int EBML_ID_INVALID ;
 int stream_read_char (int *) ;

uint32_t ebml_read_id(stream_t *s)
{
    int i, len_mask = 0x80;
    uint32_t id;

    for (i = 0, id = stream_read_char(s); i < 4 && !(id & len_mask); i++)
        len_mask >>= 1;
    if (i >= 4)
        return EBML_ID_INVALID;
    while (i--)
        id = (id << 8) | stream_read_char(s);
    return id;
}
