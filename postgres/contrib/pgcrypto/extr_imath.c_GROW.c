
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int mp_int ;


 int MP_MEMORY ;
 int MP_OK ;
 scalar_t__ s_pad (int ,int ) ;

__attribute__((used)) static inline mp_result
GROW(mp_int Z, mp_size N)
{
 return s_pad(Z, N) ? MP_OK : MP_MEMORY;
}
