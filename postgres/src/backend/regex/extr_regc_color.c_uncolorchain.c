
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {struct colordesc* cd; } ;
struct colordesc {struct arc* arcs; } ;
struct arc {size_t co; struct arc* colorchainRev; struct arc* colorchain; } ;


 int assert (int) ;

__attribute__((used)) static void
uncolorchain(struct colormap *cm,
    struct arc *a)
{
 struct colordesc *cd = &cm->cd[a->co];
 struct arc *aa = a->colorchainRev;

 if (aa == ((void*)0))
 {
  assert(cd->arcs == a);
  cd->arcs = a->colorchain;
 }
 else
 {
  assert(aa->colorchain == a);
  aa->colorchain = a->colorchain;
 }
 if (a->colorchain != ((void*)0))
  a->colorchain->colorchainRev = aa;
 a->colorchain = ((void*)0);
 a->colorchainRev = ((void*)0);
}
