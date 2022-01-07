
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int * buf_read_alloc (struct buffer*,int) ;
 int buf_write (struct buffer*,int *,int) ;

__attribute__((used)) static inline bool
buf_copy_n(struct buffer *dest, struct buffer *src, int n)
{
    uint8_t *cp = buf_read_alloc(src, n);
    if (!cp)
    {
        return 0;
    }
    return buf_write(dest, cp, n);
}
