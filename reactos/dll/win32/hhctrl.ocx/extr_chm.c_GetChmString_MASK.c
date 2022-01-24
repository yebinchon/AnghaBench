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
struct TYPE_6__ {int strings_size; int /*<<< orphan*/ ** strings; int /*<<< orphan*/  strings_stream; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_2__ CHMInfo ;

/* Variables and functions */
 int BLOCK_BITS ; 
 int BLOCK_MASK ; 
 int /*<<< orphan*/  BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC9 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static LPCSTR FUNC10(CHMInfo *chm, DWORD offset)
{
    LPCSTR str;

    if(!chm->strings_stream)
        return NULL;

    if(chm->strings_size <= (offset >> BLOCK_BITS)) {
        chm->strings_size = (offset >> BLOCK_BITS)+1;
        if(chm->strings)
            chm->strings = FUNC9(chm->strings,
                    chm->strings_size*sizeof(char*));
        else
            chm->strings = FUNC7(
                    chm->strings_size*sizeof(char*));

    }

    if(!chm->strings[offset >> BLOCK_BITS]) {
        LARGE_INTEGER pos;
        DWORD read;
        HRESULT hres;

        pos.QuadPart = offset & ~BLOCK_MASK;
        hres = FUNC2(chm->strings_stream, pos, STREAM_SEEK_SET, NULL);
        if(FUNC0(hres)) {
            FUNC4("Seek failed: %08x\n", hres);
            return NULL;
        }

        chm->strings[offset >> BLOCK_BITS] = FUNC6(BLOCK_SIZE);

        hres = FUNC1(chm->strings_stream, chm->strings[offset >> BLOCK_BITS],
                            BLOCK_SIZE, &read);
        if(FUNC0(hres)) {
            FUNC4("Read failed: %08x\n", hres);
            FUNC8(chm->strings[offset >> BLOCK_BITS]);
            chm->strings[offset >> BLOCK_BITS] = NULL;
            return NULL;
        }
    }

    str = chm->strings[offset >> BLOCK_BITS] + (offset & BLOCK_MASK);
    FUNC3("offset %#x => %s\n", offset, FUNC5(str));
    return str;
}