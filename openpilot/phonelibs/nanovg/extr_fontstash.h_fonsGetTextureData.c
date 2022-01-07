
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {unsigned char const* texData; TYPE_1__ params; } ;
typedef TYPE_2__ FONScontext ;



const unsigned char* fonsGetTextureData(FONScontext* stash, int* width, int* height)
{
 if (width != ((void*)0))
  *width = stash->params.width;
 if (height != ((void*)0))
  *height = stash->params.height;
 return stash->texData;
}
