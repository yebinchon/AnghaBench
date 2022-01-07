
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ LSEG ;


 int point_sl (int *,int *) ;

__attribute__((used)) static inline float8
lseg_sl(LSEG *lseg)
{
 return point_sl(&lseg->p[0], &lseg->p[1]);
}
