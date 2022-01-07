
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nfonts; scalar_t__ nscratch; TYPE_1__** fonts; } ;
struct TYPE_7__ {char* name; int* lut; int dataSize; unsigned char* data; unsigned char freeData; float ascender; float descender; float lineh; int font; } ;
typedef TYPE_1__ FONSfont ;
typedef TYPE_2__ FONScontext ;


 int FONS_HASH_LUT_SIZE ;
 int FONS_INVALID ;
 int fons__allocFont (TYPE_2__*) ;
 int fons__freeFont (TYPE_1__*) ;
 int fons__tt_getFontVMetrics (int *,int*,int*,int*) ;
 int fons__tt_loadFont (TYPE_2__*,int *,unsigned char*,int) ;
 int strncpy (char*,char const*,int) ;

int fonsAddFontMem(FONScontext* stash, const char* name, unsigned char* data, int dataSize, int freeData)
{
 int i, ascent, descent, fh, lineGap;
 FONSfont* font;

 int idx = fons__allocFont(stash);
 if (idx == FONS_INVALID)
  return FONS_INVALID;

 font = stash->fonts[idx];

 strncpy(font->name, name, sizeof(font->name));
 font->name[sizeof(font->name)-1] = '\0';


 for (i = 0; i < FONS_HASH_LUT_SIZE; ++i)
  font->lut[i] = -1;


 font->dataSize = dataSize;
 font->data = data;
 font->freeData = (unsigned char)freeData;


 stash->nscratch = 0;
 if (!fons__tt_loadFont(stash, &font->font, data, dataSize)) goto error;



 fons__tt_getFontVMetrics( &font->font, &ascent, &descent, &lineGap);
 fh = ascent - descent;
 font->ascender = (float)ascent / (float)fh;
 font->descender = (float)descent / (float)fh;
 font->lineh = (float)(fh + lineGap) / (float)fh;

 return idx;

error:
 fons__freeFont(font);
 stash->nfonts--;
 return FONS_INVALID;
}
