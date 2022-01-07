
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** fonts; } ;
struct TYPE_4__ {scalar_t__ nfallbacks; int* fallbacks; } ;
typedef TYPE_1__ FONSfont ;
typedef TYPE_2__ FONScontext ;


 scalar_t__ FONS_MAX_FALLBACKS ;

int fonsAddFallbackFont(FONScontext* stash, int base, int fallback)
{
 FONSfont* baseFont = stash->fonts[base];
 if (baseFont->nfallbacks < FONS_MAX_FALLBACKS) {
  baseFont->fallbacks[baseFont->nfallbacks++] = fallback;
  return 1;
 }
 return 0;
}
