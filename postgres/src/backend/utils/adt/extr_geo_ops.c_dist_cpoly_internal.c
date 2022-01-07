
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_3__ {int radius; int center; } ;
typedef int POLYGON ;
typedef TYPE_1__ CIRCLE ;


 int dist_ppoly_internal (int *,int *) ;
 double float8_mi (int ,int ) ;

__attribute__((used)) static float8
dist_cpoly_internal(CIRCLE *circle, POLYGON *poly)
{
 float8 result;


 result = float8_mi(dist_ppoly_internal(&circle->center, poly),
        circle->radius);
 if (result < 0.0)
  result = 0.0;

 return result;
}
