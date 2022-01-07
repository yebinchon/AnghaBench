
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pen_release ;

__attribute__((used)) static inline void platform_do_lowpower(unsigned int cpu, int *spurious)
{





 for (;;) {



  asm(".word	0xe320f003\n"
      :
      :
      : "memory", "cc");

  if (pen_release == cpu) {



   break;
  }
  (*spurious)++;
 }
}
