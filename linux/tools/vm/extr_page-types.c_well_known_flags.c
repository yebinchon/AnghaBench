
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BIT (int ) ;
 int BITS_COMPOUND ;
 int HUGE ;
 int KPF_HACKERS_BITS ;

__attribute__((used)) static uint64_t well_known_flags(uint64_t flags)
{

 flags &= ~KPF_HACKERS_BITS;


 if ((flags & BITS_COMPOUND) && !(flags & BIT(HUGE)))
  flags &= ~BITS_COMPOUND;

 return flags;
}
