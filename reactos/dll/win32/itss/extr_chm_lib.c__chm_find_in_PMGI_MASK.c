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
struct chmPmgiHeader {int /*<<< orphan*/ * free_space; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UInt64 ;
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  CHM_MAX_PATHLEN ; 
 int _CHM_PMGI_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int*,struct chmPmgiHeader*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static Int32 FUNC4(UChar *page_buf,
                        UInt32 block_len,
                        const WCHAR *objPath)
{
    /* XXX: modify this to do a binary search using the nice index structure
     *      that is provided for us
     */
    struct chmPmgiHeader header;
    UInt32 hremain;
    int page=-1;
    UChar *end;
    UChar *cur;
    UInt64 strLen;
    WCHAR buffer[CHM_MAX_PATHLEN+1];

    /* figure out where to start and end */
    cur = page_buf;
    hremain = _CHM_PMGI_LEN;
    if (! FUNC2(&cur, &hremain, &header))
        return -1;
    end = page_buf + block_len - (header.free_space);

    /* now, scan progressively */
    while (cur < end)
    {
        /* grab the name */
        strLen = FUNC1(&cur);
        if (! FUNC0(&cur, strLen, buffer))
            return -1;

        /* check if it is the right name */
        if (FUNC3(buffer, objPath) > 0)
            return page;

        /* load next value for path */
        page = (int)FUNC1(&cur);
    }

    return page;
}