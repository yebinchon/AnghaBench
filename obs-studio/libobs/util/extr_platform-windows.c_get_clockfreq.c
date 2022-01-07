
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int QuadPart; } ;


 int QueryPerformanceFrequency (TYPE_1__*) ;
 TYPE_1__ clock_freq ;
 int have_clockfreq ;

__attribute__((used)) static inline uint64_t get_clockfreq(void)
{
 if (!have_clockfreq) {
  QueryPerformanceFrequency(&clock_freq);
  have_clockfreq = 1;
 }

 return clock_freq.QuadPart;
}
