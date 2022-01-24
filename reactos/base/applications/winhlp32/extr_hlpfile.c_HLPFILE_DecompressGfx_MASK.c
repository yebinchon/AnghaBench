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
typedef  int BYTE ;

/* Variables and functions */
 int const* FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int const*,int const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int const*,int*,unsigned int) ; 
 unsigned int FUNC3 (int const*,int const*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static const BYTE*      FUNC9(const BYTE* src, unsigned csz, unsigned sz, BYTE packing,
                                              BYTE** alloc)
{
    const BYTE* dst;
    BYTE*       tmp;
    unsigned    sz77;

    FUNC7("Unpacking (%d) from %u bytes to %u bytes\n", packing, csz, sz);

    switch (packing)
    {
    case 0: /* uncompressed */
        if (sz != csz)
            FUNC8("Bogus gfx sizes (uncompressed): %u / %u\n", sz, csz);
        dst = src;
        *alloc = NULL;
        break;
    case 1: /* RunLen */
        dst = *alloc = FUNC4(FUNC0(), 0, sz);
        if (!dst) return NULL;
        FUNC2(src, src + csz, *alloc, sz);
        break;
    case 2: /* LZ77 */
        sz77 = FUNC3(src, src + csz);
        dst = *alloc = FUNC4(FUNC0(), 0, sz77);
        if (!dst) return NULL;
        FUNC1(src, src + csz, *alloc);
        if (sz77 != sz)
            FUNC8("Bogus gfx sizes (LZ77): %u / %u\n", sz77, sz);
        break;
    case 3: /* LZ77 then RLE */
        sz77 = FUNC3(src, src + csz);
        tmp = FUNC4(FUNC0(), 0, sz77);
        if (!tmp) return FALSE;
        FUNC1(src, src + csz, tmp);
        dst = *alloc = FUNC4(FUNC0(), 0, sz);
        if (!dst)
        {
            FUNC5(FUNC0(), 0, tmp);
            return FALSE;
        }
        FUNC2(tmp, tmp + sz77, *alloc, sz);
        FUNC5(FUNC0(), 0, tmp);
        break;
    default:
        FUNC6("Unsupported packing %u\n", packing);
        return NULL;
    }
    return dst;
}