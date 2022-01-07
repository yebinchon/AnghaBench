
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct word_at_a_time {unsigned long one_bits; unsigned long high_bits; } ;



__attribute__((used)) static inline unsigned long has_zero(unsigned long a, unsigned long *bits, const struct word_at_a_time *c)
{
 unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
 *bits = mask;
 return mask;
}
