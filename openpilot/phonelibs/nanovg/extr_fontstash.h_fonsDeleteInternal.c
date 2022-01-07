
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int userPtr; int (* renderDelete ) (int ) ;} ;
struct TYPE_7__ {int nfonts; struct TYPE_7__* scratch; struct TYPE_7__* texData; struct TYPE_7__* fonts; scalar_t__ atlas; TYPE_1__ params; } ;
typedef TYPE_2__ FONScontext ;


 int fons__deleteAtlas (scalar_t__) ;
 int fons__freeFont (TYPE_2__) ;
 int free (TYPE_2__*) ;
 int stub1 (int ) ;

void fonsDeleteInternal(FONScontext* stash)
{
 int i;
 if (stash == ((void*)0)) return;

 if (stash->params.renderDelete)
  stash->params.renderDelete(stash->params.userPtr);

 for (i = 0; i < stash->nfonts; ++i)
  fons__freeFont(stash->fonts[i]);

 if (stash->atlas) fons__deleteAtlas(stash->atlas);
 if (stash->fonts) free(stash->fonts);
 if (stash->texData) free(stash->texData);
 if (stash->scratch) free(stash->scratch);
 free(stash);
}
