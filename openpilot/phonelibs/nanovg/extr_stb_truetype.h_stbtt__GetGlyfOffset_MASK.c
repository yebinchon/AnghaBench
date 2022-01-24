#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numGlyphs; int indexToLocFormat; int glyf; scalar_t__ loca; scalar_t__ data; } ;
typedef  TYPE_1__ stbtt_fontinfo ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(const stbtt_fontinfo *info, int glyph_index)
{
   int g1,g2;

   if (glyph_index >= info->numGlyphs) return -1; // glyph index out of range
   if (info->indexToLocFormat >= 2)    return -1; // unknown index->glyph map format

   if (info->indexToLocFormat == 0) {
      g1 = info->glyf + FUNC1(info->data + info->loca + glyph_index * 2) * 2;
      g2 = info->glyf + FUNC1(info->data + info->loca + glyph_index * 2 + 2) * 2;
   } else {
      g1 = info->glyf + FUNC0 (info->data + info->loca + glyph_index * 4);
      g2 = info->glyf + FUNC0 (info->data + info->loca + glyph_index * 4 + 4);
   }

   return g1==g2 ? -1 : g1; // if length is 0, return -1
}