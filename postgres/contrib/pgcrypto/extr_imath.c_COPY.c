
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_digit ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void
COPY(mp_digit *P, mp_digit *Q, mp_size S)
{
 mp_size i__ = S * sizeof(mp_digit);
 mp_digit *p__ = P;
 mp_digit *q__ = Q;

 memcpy(q__, p__, i__);
}
