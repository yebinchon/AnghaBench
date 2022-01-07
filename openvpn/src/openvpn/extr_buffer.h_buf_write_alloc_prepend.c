
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buffer {int dummy; } ;


 int * buf_prepend (struct buffer*,int) ;
 int * buf_write_alloc (struct buffer*,int) ;

__attribute__((used)) static inline uint8_t *
buf_write_alloc_prepend(struct buffer *buf, int size, bool prepend)
{
    return prepend ? buf_prepend(buf, size) : buf_write_alloc(buf, size);
}
