
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CopyMemory (void*,unsigned char*,scalar_t__) ;
 int ERROR_BUFFER_OVERFLOW ;

int safe_read(unsigned char **pos, uint32_t *remaining, void *dest, uint32_t dest_len)
{
    if (*remaining < dest_len)
        return ERROR_BUFFER_OVERFLOW;

    CopyMemory(dest, *pos, dest_len);
    *pos += dest_len;
    *remaining -= dest_len;
    return 0;
}
