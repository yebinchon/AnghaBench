
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_4__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;
typedef int LINE ;


 double line_closept_point (int *,int *,int *) ;
 scalar_t__ lseg_interpt_line (int *,TYPE_1__*,int *) ;

__attribute__((used)) static float8
lseg_closept_line(Point *result, LSEG *lseg, LINE *line)
{
 float8 dist1,
    dist2;

 if (lseg_interpt_line(result, lseg, line))
  return 0.0;

 dist1 = line_closept_point(((void*)0), line, &lseg->p[0]);
 dist2 = line_closept_point(((void*)0), line, &lseg->p[1]);

 if (dist1 < dist2)
 {
  if (result != ((void*)0))
   *result = lseg->p[0];

  return dist1;
 }
 else
 {
  if (result != ((void*)0))
   *result = lseg->p[1];

  return dist2;
 }
}
