
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrgm; } ;
typedef TYPE_1__ ColorTrgmInfo ;
typedef int ColorTrgm ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int
colorTrgmInfoCmp(const void *p1, const void *p2)
{
 const ColorTrgmInfo *c1 = (const ColorTrgmInfo *) p1;
 const ColorTrgmInfo *c2 = (const ColorTrgmInfo *) p2;

 return memcmp(&c1->ctrgm, &c2->ctrgm, sizeof(ColorTrgm));
}
