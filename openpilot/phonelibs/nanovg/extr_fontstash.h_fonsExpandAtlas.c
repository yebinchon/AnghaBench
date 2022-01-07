
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int nnodes; TYPE_1__* nodes; } ;
struct TYPE_8__ {int width; int height; scalar_t__ (* renderResize ) (int ,int,int) ;int userPtr; } ;
struct TYPE_9__ {unsigned char* texData; int* dirtyRect; float itw; float ith; TYPE_2__ params; TYPE_5__* atlas; } ;
struct TYPE_7__ {int y; } ;
typedef TYPE_3__ FONScontext ;


 int fons__atlasExpand (TYPE_5__*,int,int) ;
 int fons__flush (TYPE_3__*) ;
 int fons__maxi (int,int) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ stub1 (int ,int,int) ;

int fonsExpandAtlas(FONScontext* stash, int width, int height)
{
 int i, maxy = 0;
 unsigned char* data = ((void*)0);
 if (stash == ((void*)0)) return 0;

 width = fons__maxi(width, stash->params.width);
 height = fons__maxi(height, stash->params.height);

 if (width == stash->params.width && height == stash->params.height)
  return 1;


 fons__flush(stash);


 if (stash->params.renderResize != ((void*)0)) {
  if (stash->params.renderResize(stash->params.userPtr, width, height) == 0)
   return 0;
 }

 data = (unsigned char*)malloc(width * height);
 if (data == ((void*)0))
  return 0;
 for (i = 0; i < stash->params.height; i++) {
  unsigned char* dst = &data[i*width];
  unsigned char* src = &stash->texData[i*stash->params.width];
  memcpy(dst, src, stash->params.width);
  if (width > stash->params.width)
   memset(dst+stash->params.width, 0, width - stash->params.width);
 }
 if (height > stash->params.height)
  memset(&data[stash->params.height * width], 0, (height - stash->params.height) * width);

 free(stash->texData);
 stash->texData = data;


 fons__atlasExpand(stash->atlas, width, height);


 for (i = 0; i < stash->atlas->nnodes; i++)
  maxy = fons__maxi(maxy, stash->atlas->nodes[i].y);
 stash->dirtyRect[0] = 0;
 stash->dirtyRect[1] = 0;
 stash->dirtyRect[2] = stash->params.width;
 stash->dirtyRect[3] = maxy;

 stash->params.width = width;
 stash->params.height = height;
 stash->itw = 1.0f/stash->params.width;
 stash->ith = 1.0f/stash->params.height;

 return 1;
}
