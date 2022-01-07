
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numLeft; int numRight; } ;
typedef TYPE_1__* SetOpStatePerGroup ;



__attribute__((used)) static inline void
advance_counts(SetOpStatePerGroup pergroup, int flag)
{
 if (flag)
  pergroup->numRight++;
 else
  pergroup->numLeft++;
}
