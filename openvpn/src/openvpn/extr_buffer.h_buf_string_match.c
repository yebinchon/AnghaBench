
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; } ;


 int BPTR (struct buffer const*) ;
 scalar_t__ memcmp (int ,void const*,int) ;

__attribute__((used)) static inline bool
buf_string_match(const struct buffer *src, const void *match, int size)
{
    if (size != src->len)
    {
        return 0;
    }
    return memcmp(BPTR(src), match, size) == 0;
}
