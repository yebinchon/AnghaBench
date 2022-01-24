#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nfonts; scalar_t__ nscratch; TYPE_1__** fonts; } ;
struct TYPE_7__ {char* name; int* lut; int dataSize; unsigned char* data; unsigned char freeData; float ascender; float descender; float lineh; int /*<<< orphan*/  font; } ;
typedef  TYPE_1__ FONSfont ;
typedef  TYPE_2__ FONScontext ;

/* Variables and functions */
 int FONS_HASH_LUT_SIZE ; 
 int FONS_INVALID ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int FUNC5(FONScontext* stash, const char* name, unsigned char* data, int dataSize, int freeData)
{
	int i, ascent, descent, fh, lineGap;
	FONSfont* font;

	int idx = FUNC0(stash);
	if (idx == FONS_INVALID)
		return FONS_INVALID;

	font = stash->fonts[idx];

	FUNC4(font->name, name, sizeof(font->name));
	font->name[sizeof(font->name)-1] = '\0';

	// Init hash lookup.
	for (i = 0; i < FONS_HASH_LUT_SIZE; ++i)
		font->lut[i] = -1;

	// Read in the font data.
	font->dataSize = dataSize;
	font->data = data;
	font->freeData = (unsigned char)freeData;

	// Init font
	stash->nscratch = 0;
	if (!FUNC3(stash, &font->font, data, dataSize)) goto error;

	// Store normalized line height. The real line height is got
	// by multiplying the lineh by font size.
	FUNC2( &font->font, &ascent, &descent, &lineGap);
	fh = ascent - descent;
	font->ascender = (float)ascent / (float)fh;
	font->descender = (float)descent / (float)fh;
	font->lineh = (float)(fh + lineGap) / (float)fh;

	return idx;

error:
	FUNC1(font);
	stash->nfonts--;
	return FONS_INVALID;
}