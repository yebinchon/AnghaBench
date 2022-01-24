#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
struct TYPE_12__ {int cb; TYPE_2__* aIndex; } ;
struct TYPE_8__ {TYPE_3__* pInputPin; } ;
struct TYPE_11__ {int offset; TYPE_5__* oldindex; int /*<<< orphan*/  EndOfFile; TYPE_1__ Parser; int /*<<< orphan*/  CurrentChunkOffset; } ;
struct TYPE_10__ {int /*<<< orphan*/  pReader; } ;
struct TYPE_9__ {int dwOffset; int dwChunkId; char* dwFlags; char* dwSize; } ;
typedef  TYPE_3__ PullPin ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_4__ AVISplitterImpl ;
typedef  TYPE_5__ AVIOLDINDEX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char*,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 char* FUNC6 (char*,int) ; 
 int FUNC7 (char,float,char,char) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static HRESULT FUNC9(AVISplitterImpl *This)
{
    ULONGLONG mov_pos = FUNC0(This->CurrentChunkOffset) - sizeof(DWORD);
    AVIOLDINDEX *pAviOldIndex = This->oldindex;
    int relative = -1;
    DWORD x;

    for (x = 0; x < pAviOldIndex->cb / sizeof(pAviOldIndex->aIndex[0]); ++x)
    {
        DWORD temp, temp2 = 0, offset, chunkid;
        PullPin *pin = This->Parser.pInputPin;

        offset = pAviOldIndex->aIndex[x].dwOffset;
        chunkid = pAviOldIndex->aIndex[x].dwChunkId;

        FUNC5("dwChunkId: %.4s\n", (char *)&chunkid);
        FUNC5("dwFlags: %08x\n", pAviOldIndex->aIndex[x].dwFlags);
        FUNC5("dwOffset (%s): %08x\n", relative ? "relative" : "absolute", offset);
        FUNC5("dwSize: %08x\n", pAviOldIndex->aIndex[x].dwSize);

        /* Only scan once, or else this will take too long */
        if (relative == -1)
        {
            FUNC4(pin->pReader, offset, sizeof(DWORD), (BYTE *)&temp);
            relative = (chunkid != temp);

            if (chunkid == FUNC7('7','F','x','x')
                && ((char *)&temp)[0] == 'i' && ((char *)&temp)[1] == 'x')
                relative = FALSE;

            if (relative)
            {
                if (offset + mov_pos < FUNC0(This->EndOfFile))
                    FUNC4(pin->pReader, offset + mov_pos, sizeof(DWORD), (BYTE *)&temp2);

                if (chunkid == FUNC7('7','F','x','x')
                    && ((char *)&temp2)[0] == 'i' && ((char *)&temp2)[1] == 'x')
                {
                    /* Do nothing, all is great */
                }
                else if (temp2 != chunkid)
                {
                    FUNC2("Faulty index or bug in handling: Wanted FCC: %s, Abs FCC: %s (@ %x), Rel FCC: %s (@ %s)\n",
                        FUNC6((char *)&chunkid, 4), FUNC6((char *)&temp, 4), offset,
                        FUNC6((char *)&temp2, 4), FUNC8(mov_pos + offset));
                    relative = -1;
                }
                else
                    FUNC5("Scanned dwChunkId: %s\n", FUNC6((char *)&temp2, 4));
            }
            else if (!relative)
                FUNC5("Scanned dwChunkId: %s\n", FUNC6((char *)&temp, 4));
        }
        /* Only dump one packet */
        else break;
    }

    if (relative == -1)
    {
        FUNC3("Dropping index: no idea whether it is relative or absolute\n");
        FUNC1(This->oldindex);
        This->oldindex = NULL;
    }
    else if (!relative)
        This->offset = 0;
    else
        This->offset = (DWORD)mov_pos;

    return S_OK;
}