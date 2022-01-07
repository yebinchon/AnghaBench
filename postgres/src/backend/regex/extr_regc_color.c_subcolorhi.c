
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {TYPE_1__* cd; } ;
typedef size_t color ;
struct TYPE_2__ {int nuchrs; } ;


 scalar_t__ CISERR () ;
 size_t COLORLESS ;
 int assert (int) ;
 size_t newsub (struct colormap*,size_t) ;

__attribute__((used)) static color
subcolorhi(struct colormap *cm, color *pco)
{
 color co;
 color sco;

 co = *pco;
 sco = newsub(cm, co);
 if (CISERR())
  return COLORLESS;
 assert(sco != COLORLESS);

 if (co == sco)
  return co;
 cm->cd[co].nuchrs--;
 cm->cd[sco].nuchrs++;
 *pco = sco;
 return sco;
}
