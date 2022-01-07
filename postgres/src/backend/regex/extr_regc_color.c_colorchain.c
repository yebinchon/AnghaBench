
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colormap {struct colordesc* cd; } ;
struct colordesc {struct arc* arcs; } ;
struct arc {size_t co; struct arc* colorchainRev; struct arc* colorchain; } ;



__attribute__((used)) static void
colorchain(struct colormap *cm,
     struct arc *a)
{
 struct colordesc *cd = &cm->cd[a->co];

 if (cd->arcs != ((void*)0))
  cd->arcs->colorchainRev = a;
 a->colorchain = cd->arcs;
 a->colorchainRev = ((void*)0);
 cd->arcs = a;
}
