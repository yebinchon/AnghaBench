
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int mp_int ;


 int mp_int_root (int ,int,int ) ;

__attribute__((used)) static inline
mp_result
mp_int_sqrt(mp_int a, mp_int c)
{
 return mp_int_root(a, 2, c);
}
