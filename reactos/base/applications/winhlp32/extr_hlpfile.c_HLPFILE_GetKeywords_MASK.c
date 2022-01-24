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
struct TYPE_4__ {void* kwdata; void* kwbtree; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static BOOL FUNC6(HLPFILE *hlpfile)
{
    BYTE                *cbuf, *cend;
    unsigned            clen;

    if (!FUNC1(hlpfile, "|KWBTREE", &cbuf, &cend)) return FALSE;
    clen = cend - cbuf;
    hlpfile->kwbtree = FUNC2(FUNC0(), 0, clen);
    if (!hlpfile->kwbtree) return FALSE;
    FUNC5(hlpfile->kwbtree, cbuf, clen);

    if (!FUNC1(hlpfile, "|KWDATA", &cbuf, &cend))
    {
        FUNC4("corrupted help file: kwbtree present but kwdata absent\n");
        FUNC3(FUNC0(), 0, hlpfile->kwbtree);
        return FALSE;
    }
    clen = cend - cbuf;
    hlpfile->kwdata = FUNC2(FUNC0(), 0, clen);
    if (!hlpfile->kwdata)
    {
        FUNC3(FUNC0(), 0, hlpfile->kwdata);
        return FALSE;
    }
    FUNC5(hlpfile->kwdata, cbuf, clen);

    return TRUE;
}