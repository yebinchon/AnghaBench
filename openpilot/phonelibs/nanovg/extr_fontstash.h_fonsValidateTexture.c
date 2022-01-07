
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int* dirtyRect; TYPE_1__ params; } ;
typedef TYPE_2__ FONScontext ;



int fonsValidateTexture(FONScontext* stash, int* dirty)
{
 if (stash->dirtyRect[0] < stash->dirtyRect[2] && stash->dirtyRect[1] < stash->dirtyRect[3]) {
  dirty[0] = stash->dirtyRect[0];
  dirty[1] = stash->dirtyRect[1];
  dirty[2] = stash->dirtyRect[2];
  dirty[3] = stash->dirtyRect[3];

  stash->dirtyRect[0] = stash->params.width;
  stash->dirtyRect[1] = stash->params.height;
  stash->dirtyRect[2] = 0;
  stash->dirtyRect[3] = 0;
  return 1;
 }
 return 0;
}
