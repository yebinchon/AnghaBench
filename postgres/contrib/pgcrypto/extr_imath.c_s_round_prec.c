
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;



__attribute__((used)) static inline mp_size
s_round_prec(mp_size P)
{
 return 2 * ((P + 1) / 2);
}
