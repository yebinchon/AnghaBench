
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int * buf_read_alloc (struct buffer*,int) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static inline bool
buf_read(struct buffer *src, void *dest, int size)
{
    uint8_t *cp = buf_read_alloc(src, size);
    if (!cp)
    {
        return 0;
    }
    memcpy(dest, cp, size);
    return 1;
}
