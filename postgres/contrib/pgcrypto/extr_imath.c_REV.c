
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
REV(unsigned char *A, int N)
{
 unsigned char *u_ = A;
 unsigned char *v_ = u_ + N - 1;

 while (u_ < v_)
 {
  unsigned char xch = *u_;

  *u_++ = *v_;
  *v_-- = xch;
 }
}
