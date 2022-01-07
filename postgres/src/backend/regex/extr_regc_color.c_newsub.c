
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {TYPE_1__* cd; } ;
typedef size_t color ;
struct TYPE_2__ {size_t sub; int nschrs; int nuchrs; } ;


 int CISERR () ;
 size_t COLORLESS ;
 size_t NOSUB ;
 int assert (int) ;
 size_t newcolor (struct colormap*) ;

__attribute__((used)) static color
newsub(struct colormap *cm,
    color co)
{
 color sco;

 sco = cm->cd[co].sub;
 if (sco == NOSUB)
 {

  if ((cm->cd[co].nschrs + cm->cd[co].nuchrs) == 1)
   return co;
  sco = newcolor(cm);
  if (sco == COLORLESS)
  {
   assert(CISERR());
   return COLORLESS;
  }
  cm->cd[co].sub = sco;
  cm->cd[sco].sub = sco;
 }
 assert(sco != NOSUB);

 return sco;
}
