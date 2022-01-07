
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int BLEN (struct buffer const*) ;
 int BPTR (struct buffer const*) ;
 int buf_write (struct buffer*,int ,int ) ;

__attribute__((used)) static inline bool
buf_copy(struct buffer *dest, const struct buffer *src)
{
    return buf_write(dest, BPTR(src), BLEN(src));
}
