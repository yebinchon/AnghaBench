
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_usmall ;
typedef scalar_t__ mp_small ;
typedef int mp_int ;


 int s_uvcmp (int ,int ) ;

__attribute__((used)) static int
s_vcmp(mp_int a, mp_small v)
{




 mp_usmall uv = (v < 0) ? -(mp_usmall) v : (mp_usmall) v;




 return s_uvcmp(a, uv);
}
