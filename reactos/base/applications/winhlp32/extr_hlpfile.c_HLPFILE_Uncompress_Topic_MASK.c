#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int topic_maplen; unsigned int tbsize; int dsize; int /*<<< orphan*/ ** topic_map; int /*<<< orphan*/ * topic_end; scalar_t__ compressed; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC8(HLPFILE* hlpfile)
{
    BYTE *buf, *ptr, *end, *newptr;
    unsigned int i, newsize = 0;
    unsigned int topic_size;

    if (!FUNC1(hlpfile, "|TOPIC", &buf, &end))
    {FUNC5("topic0\n"); return FALSE;}

    buf += 9; /* Skip file header */
    topic_size = end - buf;
    if (hlpfile->compressed)
    {
        hlpfile->topic_maplen = (topic_size - 1) / hlpfile->tbsize + 1;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            ptr = buf + i * hlpfile->tbsize;

            /* I don't know why, it's necessary for printman.hlp */
            if (ptr + 0x44 > end) ptr = end - 0x44;

            newsize += FUNC3(ptr + 0xc, FUNC7(end, ptr + hlpfile->tbsize));
        }

        hlpfile->topic_map = FUNC4(FUNC0(), 0,
                                       hlpfile->topic_maplen * sizeof(hlpfile->topic_map[0]) + newsize);
        if (!hlpfile->topic_map) return FALSE;
        newptr = (BYTE*)(hlpfile->topic_map + hlpfile->topic_maplen);
        hlpfile->topic_end = newptr + newsize;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            ptr = buf + i * hlpfile->tbsize;
            if (ptr + 0x44 > end) ptr = end - 0x44;

            hlpfile->topic_map[i] = newptr;
            newptr = FUNC2(ptr + 0xc, FUNC7(end, ptr + hlpfile->tbsize), newptr);
        }
    }
    else
    {
        /* basically, we need to copy the TopicBlockSize byte pages
         * (removing the first 0x0C) in one single area in memory
         */
        hlpfile->topic_maplen = (topic_size - 1) / hlpfile->tbsize + 1;
        hlpfile->topic_map = FUNC4(FUNC0(), 0,
                                       hlpfile->topic_maplen * (sizeof(hlpfile->topic_map[0]) + hlpfile->dsize));
        if (!hlpfile->topic_map) return FALSE;
        newptr = (BYTE*)(hlpfile->topic_map + hlpfile->topic_maplen);
        hlpfile->topic_end = newptr + topic_size;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            hlpfile->topic_map[i] = newptr + i * hlpfile->dsize;
            FUNC6(hlpfile->topic_map[i], buf + i * hlpfile->tbsize + 0x0C, hlpfile->dsize);
        }
    }
    return TRUE;
}