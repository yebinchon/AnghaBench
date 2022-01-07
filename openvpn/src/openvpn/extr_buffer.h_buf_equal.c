
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 scalar_t__ BLEN (struct buffer const*) ;
 int BPTR (struct buffer const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline bool
buf_equal(const struct buffer *a, const struct buffer *b)
{
    return BLEN(a) == BLEN(b) && 0 == memcmp(BPTR(a), BPTR(b), BLEN(a));
}
