
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* renderResize ) (int ,int,int) ;int width; int height; int userPtr; } ;
struct TYPE_9__ {unsigned char* texData; int* dirtyRect; int nfonts; float itw; float ith; TYPE_1__ params; TYPE_2__** fonts; int atlas; } ;
struct TYPE_8__ {int* lut; scalar_t__ nglyphs; } ;
typedef TYPE_2__ FONSfont ;
typedef TYPE_3__ FONScontext ;


 int FONS_HASH_LUT_SIZE ;
 int fons__addWhiteRect (TYPE_3__*,int,int) ;
 int fons__atlasReset (int ,int,int) ;
 int fons__flush (TYPE_3__*) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ realloc (unsigned char*,int) ;
 scalar_t__ stub1 (int ,int,int) ;

int fonsResetAtlas(FONScontext* stash, int width, int height)
{
 int i, j;
 if (stash == ((void*)0)) return 0;


 fons__flush(stash);


 if (stash->params.renderResize != ((void*)0)) {
  if (stash->params.renderResize(stash->params.userPtr, width, height) == 0)
   return 0;
 }


 fons__atlasReset(stash->atlas, width, height);


 stash->texData = (unsigned char*)realloc(stash->texData, width * height);
 if (stash->texData == ((void*)0)) return 0;
 memset(stash->texData, 0, width * height);


 stash->dirtyRect[0] = width;
 stash->dirtyRect[1] = height;
 stash->dirtyRect[2] = 0;
 stash->dirtyRect[3] = 0;


 for (i = 0; i < stash->nfonts; i++) {
  FONSfont* font = stash->fonts[i];
  font->nglyphs = 0;
  for (j = 0; j < FONS_HASH_LUT_SIZE; j++)
   font->lut[j] = -1;
 }

 stash->params.width = width;
 stash->params.height = height;
 stash->itw = 1.0f/stash->params.width;
 stash->ith = 1.0f/stash->params.height;


 fons__addWhiteRect(stash, 2,2);

 return 1;
}
