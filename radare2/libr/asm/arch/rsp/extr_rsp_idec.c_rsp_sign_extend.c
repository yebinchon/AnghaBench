
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



__attribute__((used)) static inline st32 rsp_sign_extend(st32 x, st32 m)
{



 return (x ^ m) - m;
}
