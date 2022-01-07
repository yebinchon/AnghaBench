
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;
typedef int LINE ;


 int line_construct (int *,int *,int ) ;
 int line_interpt_line (int *,int *,int *) ;
 int lseg_contain_point (TYPE_1__*,int *) ;
 int lseg_sl (TYPE_1__*) ;
 scalar_t__ point_eq_point (int *,int *) ;

__attribute__((used)) static bool
lseg_interpt_line(Point *result, LSEG *lseg, LINE *line)
{
 Point interpt;
 LINE tmp;






 line_construct(&tmp, &lseg->p[0], lseg_sl(lseg));
 if (!line_interpt_line(&interpt, &tmp, line))
  return 0;





 if (!lseg_contain_point(lseg, &interpt))
  return 0;
 if (result != ((void*)0))
 {





  if (point_eq_point(&lseg->p[0], &interpt))
   *result = lseg->p[0];
  else if (point_eq_point(&lseg->p[1], &interpt))
   *result = lseg->p[1];
  else
   *result = interpt;
 }

 return 1;
}
