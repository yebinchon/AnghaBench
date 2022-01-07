
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 scalar_t__ buf_bptr (struct buffer const*) ;

__attribute__((used)) static inline char *
buf_str(const struct buffer *buf)
{
    return (char *)buf_bptr(buf);
}
