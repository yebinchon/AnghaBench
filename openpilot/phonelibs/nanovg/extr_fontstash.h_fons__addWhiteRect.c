
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; } ;
struct TYPE_5__ {unsigned char* texData; void** dirtyRect; TYPE_1__ params; int atlas; } ;
typedef TYPE_2__ FONScontext ;


 scalar_t__ fons__atlasAddRect (int ,int,int,int*,int*) ;
 void* fons__maxi (void*,int) ;
 void* fons__mini (void*,int) ;

__attribute__((used)) static void fons__addWhiteRect(FONScontext* stash, int w, int h)
{
 int x, y, gx, gy;
 unsigned char* dst;
 if (fons__atlasAddRect(stash->atlas, w, h, &gx, &gy) == 0)
  return;


 dst = &stash->texData[gx + gy * stash->params.width];
 for (y = 0; y < h; y++) {
  for (x = 0; x < w; x++)
   dst[x] = 0xff;
  dst += stash->params.width;
 }

 stash->dirtyRect[0] = fons__mini(stash->dirtyRect[0], gx);
 stash->dirtyRect[1] = fons__mini(stash->dirtyRect[1], gy);
 stash->dirtyRect[2] = fons__maxi(stash->dirtyRect[2], gx+w);
 stash->dirtyRect[3] = fons__maxi(stash->dirtyRect[3], gy+h);
}
