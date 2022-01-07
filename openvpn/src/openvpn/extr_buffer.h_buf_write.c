
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int * buf_write_alloc (struct buffer*,int) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static inline bool
buf_write(struct buffer *dest, const void *src, int size)
{
    uint8_t *cp = buf_write_alloc(dest, size);
    if (!cp)
    {
        return 0;
    }
    memcpy(cp, src, size);
    return 1;
}
