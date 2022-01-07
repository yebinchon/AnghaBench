
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ width; scalar_t__ height; int userPtr; int (* renderDraw ) (int ,int ,int ,int ,scalar_t__) ;int (* renderUpdate ) (int ,scalar_t__*,int ) ;} ;
struct TYPE_5__ {scalar_t__* dirtyRect; scalar_t__ nverts; int colors; int tcoords; int verts; TYPE_1__ params; int texData; } ;
typedef TYPE_2__ FONScontext ;


 int stub1 (int ,scalar_t__*,int ) ;
 int stub2 (int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void fons__flush(FONScontext* stash)
{

 if (stash->dirtyRect[0] < stash->dirtyRect[2] && stash->dirtyRect[1] < stash->dirtyRect[3]) {
  if (stash->params.renderUpdate != ((void*)0))
   stash->params.renderUpdate(stash->params.userPtr, stash->dirtyRect, stash->texData);

  stash->dirtyRect[0] = stash->params.width;
  stash->dirtyRect[1] = stash->params.height;
  stash->dirtyRect[2] = 0;
  stash->dirtyRect[3] = 0;
 }


 if (stash->nverts > 0) {
  if (stash->params.renderDraw != ((void*)0))
   stash->params.renderDraw(stash->params.userPtr, stash->verts, stash->tcoords, stash->colors, stash->nverts);
  stash->nverts = 0;
 }
}
