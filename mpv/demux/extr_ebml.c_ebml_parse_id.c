
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EBML_ID_INVALID ;

__attribute__((used)) static uint32_t ebml_parse_id(uint8_t *data, size_t data_len, int *length)
{
    *length = -1;
    uint8_t *end = data + data_len;
    if (data == end)
        return EBML_ID_INVALID;
    int len = 1;
    uint32_t id = *data++;
    for (int len_mask = 0x80; !(id & len_mask); len_mask >>= 1) {
        len++;
        if (len > 4)
            return EBML_ID_INVALID;
    }
    *length = len;
    while (--len && data < end)
        id = (id << 8) | *data++;
    return id;
}
