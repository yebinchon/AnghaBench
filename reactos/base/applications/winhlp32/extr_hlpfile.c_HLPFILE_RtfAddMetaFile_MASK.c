#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RtfData {int dummy; } ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct RtfData*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (struct RtfData*,char*) ; 
 scalar_t__ FUNC6 (struct RtfData*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/  const**) ; 
 unsigned int FUNC10 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int,int,int) ; 

__attribute__((used)) static BOOL     FUNC12(struct RtfData* rd, HLPFILE* file, const BYTE* beg, BYTE pack)
{
    ULONG               size, csize, off, hs_offset, hs_size;
    const BYTE*         ptr;
    const BYTE*         bits;
    BYTE*               alloc = NULL;
    char                tmp[256];
    unsigned            mm;
    BOOL                ret;

    FUNC8("Loading metafile\n");

    ptr = beg + 2; /* for type and pack */

    mm = FUNC10(&ptr); /* mapping mode */
    FUNC11(tmp, "{\\pict\\wmetafile%u\\picw%u\\pich%u",
            mm, FUNC1(ptr, 0), FUNC1(ptr, 2));
    if (!FUNC5(rd, tmp)) return FALSE;
    ptr += 4;

    size = FUNC9(&ptr); /* decompressed size */
    csize = FUNC9(&ptr); /* compressed size */
    hs_size = FUNC9(&ptr); /* hotspot size */
    off = FUNC0(ptr, 0);
    hs_offset = FUNC0(ptr, 4);
    ptr += 8;

    FUNC3(rd, file, beg, hs_size, hs_offset);

    FUNC8("sz=%u csz=%u offs=%u/%u,%u/%u\n",
               size, csize, off, (ULONG)(ptr - beg), hs_size, hs_offset);

    bits = FUNC4(beg + off, csize, size, pack, &alloc);
    if (!bits) return FALSE;

    ret = FUNC6(rd, bits, size) &&
        FUNC5(rd, "}");

    FUNC7(FUNC2(), 0, alloc);

    return ret;
}