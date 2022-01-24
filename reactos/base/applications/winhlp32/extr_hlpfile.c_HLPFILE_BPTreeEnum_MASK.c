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
typedef  int /*<<< orphan*/  (* HLPFILE_BPTreeCallback ) (int /*<<< orphan*/ *,void**,void*) ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

void FUNC3(BYTE* buf, HLPFILE_BPTreeCallback cb, void* cookie)
{
    unsigned magic;
    unsigned page_size;
    unsigned cur_page;
    unsigned level;
    BYTE *pages, *ptr, *newptr;
    int i, entries;

    magic = FUNC1(buf, 9);
    if (magic != 0x293B)
    {
        FUNC2("Invalid magic in B+ tree: 0x%x\n", magic);
        return;
    }
    page_size = FUNC1(buf, 9+4);
    cur_page  = FUNC1(buf, 9+26);
    level     = FUNC1(buf, 9+32);
    pages     = buf + 9 + 38;
    while (--level > 0)
    {
        ptr = pages + cur_page*page_size;
        cur_page = FUNC1(ptr, 4);
    }
    while (cur_page != 0xFFFF)
    {
        ptr = pages + cur_page*page_size;
        entries = FUNC0(ptr, 2);
        ptr += 8;
        for (i = 0; i < entries; i++)
        {
            cb(ptr, (void **)&newptr, cookie);
            ptr = newptr;
        }
        cur_page = FUNC1(pages+cur_page*page_size, 6);
    }
}