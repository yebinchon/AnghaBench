
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CopyMemory (unsigned char*,void*,scalar_t__) ;
 int ERROR_BUFFER_OVERFLOW ;

int safe_write(unsigned char **pos, uint32_t *remaining, void *src, uint32_t src_len)
{
    if (*remaining < src_len)
        return ERROR_BUFFER_OVERFLOW;

    CopyMemory(*pos, src, src_len);
    *pos += src_len;
    *remaining -= src_len;
    return 0;
}
