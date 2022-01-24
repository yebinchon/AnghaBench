#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  embedding; int /*<<< orphan*/  stream; } ;
typedef  scalar_t__ HPDF_UINT32 ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  HPDF_INVALID_TTC_FILE ; 
 int /*<<< orphan*/  HPDF_INVALID_TTC_INDEX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static HPDF_STATUS
FUNC7 (HPDF_FontDef  fontdef,
               HPDF_Stream   stream,
               HPDF_UINT     index,
               HPDF_BOOL     embedding)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_BYTE tag[4];
    HPDF_UINT32 num_fonts;
    HPDF_UINT32 offset;
    HPDF_UINT size;

    FUNC2 ((" HPDF_TTFontDef_LoadFontData2\n"));

    attr->stream = stream;
    attr->embedding = embedding;

    ret = FUNC5 (stream, 0, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    size = 4;
    if ((ret = FUNC4 (stream, tag, &size)) != HPDF_OK)
        return ret;

    if (FUNC1 (tag, (HPDF_BYTE *)"ttcf", 4) != 0)
        return FUNC3 (fontdef->error, HPDF_INVALID_TTC_FILE, 0);

    if ((ret = FUNC5 (stream, 8, HPDF_SEEK_SET)) != HPDF_OK)
        return ret;

    if ((ret = FUNC0 (stream, &num_fonts)) != HPDF_OK)
        return ret;

    FUNC2((" HPDF_TTFontDef_LoadFontData2 num_fonts=%u\n",
                (HPDF_UINT)num_fonts));

    if (index >= num_fonts)
        return FUNC3 (fontdef->error, HPDF_INVALID_TTC_INDEX, 0);

    /* read offset table for target font and set stream positioning to offset
     * value.
     */
    if ((ret = FUNC5 (stream, 12 + index * 4, HPDF_SEEK_SET)) !=
                HPDF_OK)
        return ret;

    if ((ret = FUNC0 (stream, &offset)) != HPDF_OK)
        return ret;

    return FUNC6 (fontdef, stream, embedding, offset);
}