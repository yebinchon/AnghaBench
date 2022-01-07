
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int _exit (int ) ;
 int abort () ;

__attribute__((used)) static inline int __bail(int for_realz, bool no_print, __u8 step)
{
 if (for_realz) {
  if (no_print)
   _exit(step);
  abort();
 }
 return 0;
}
