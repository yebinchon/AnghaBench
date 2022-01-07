
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ a ;
 int altivec_touch_fn () ;
 scalar_t__ b ;
 scalar_t__ c ;
 double fp ;
 int gettimeofday (int *,int *) ;
 scalar_t__ touch_altivec ;
 scalar_t__ touch_fp ;
 scalar_t__ touch_vdso ;
 scalar_t__ touch_vector ;
 int tv ;

__attribute__((used)) static void touch(void)
{
 if (touch_vdso)
  gettimeofday(&tv, ((void*)0));

 if (touch_fp)
  fp += 0.1;






 if (touch_vector)
  c = a + b;

 asm volatile("# %0 %1 %2": : "r"(&tv), "r"(&fp), "r"(&c));
}
