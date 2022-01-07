
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; scalar_t__ freeData; struct TYPE_4__* glyphs; } ;
typedef TYPE_1__ FONSfont ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void fons__freeFont(FONSfont* font)
{
 if (font == ((void*)0)) return;
 if (font->glyphs) free(font->glyphs);
 if (font->freeData && font->data) free(font->data);
 free(font);
}
