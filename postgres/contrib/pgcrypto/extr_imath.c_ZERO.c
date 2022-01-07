
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_digit ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void
ZERO(mp_digit *P, mp_size S)
{
 mp_size i__ = S * sizeof(mp_digit);
 mp_digit *p__ = P;

 memset(p__, 0, i__);
}
