
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numRight; scalar_t__ numLeft; } ;
typedef TYPE_1__* SetOpStatePerGroup ;



__attribute__((used)) static inline void
initialize_counts(SetOpStatePerGroup pergroup)
{
 pergroup->numLeft = pergroup->numRight = 0;
}
