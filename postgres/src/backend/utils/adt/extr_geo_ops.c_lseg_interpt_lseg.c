
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;
typedef int LINE ;


 int line_construct (int *,int *,int ) ;
 int lseg_contain_point (TYPE_1__*,int *) ;
 int lseg_interpt_line (int *,TYPE_1__*,int *) ;
 int lseg_sl (TYPE_1__*) ;

__attribute__((used)) static bool
lseg_interpt_lseg(Point *result, LSEG *l1, LSEG *l2)
{
 Point interpt;
 LINE tmp;

 line_construct(&tmp, &l2->p[0], lseg_sl(l2));
 if (!lseg_interpt_line(&interpt, l1, &tmp))
  return 0;





 if (!lseg_contain_point(l2, &interpt))
  return 0;

 if (result != ((void*)0))
  *result = interpt;

 return 1;
}
