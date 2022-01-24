#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list ;
typedef  size_t ULONG ;
struct TYPE_30__ {int cbBuffer; int cbAlign; int cBuffers; scalar_t__ cbPrefix; } ;
struct TYPE_21__ {int cb; int dwFlags; } ;
struct TYPE_23__ {int cStreams; } ;
struct TYPE_29__ {scalar_t__ EndOfFile; TYPE_11__ AviHeader; TYPE_2__ Parser; int /*<<< orphan*/ * oldindex; TYPE_1__* streams; int /*<<< orphan*/  CurrentChunk; void* CurrentChunkOffset; } ;
struct TYPE_24__ {scalar_t__ pFilter; } ;
struct TYPE_25__ {TYPE_3__ pinInfo; } ;
struct TYPE_28__ {scalar_t__ rtStop; int /*<<< orphan*/  pReader; void* rtStart; TYPE_4__ pin; } ;
struct TYPE_27__ {int cb; int fcc; } ;
struct TYPE_26__ {scalar_t__ fcc; scalar_t__ fccListType; int cb; } ;
struct TYPE_22__ {scalar_t__ entries; } ;
typedef  TYPE_5__ RIFFLIST ;
typedef  TYPE_6__ RIFFCHUNK ;
typedef  TYPE_7__ PullPin ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ LONGLONG ;
typedef  int /*<<< orphan*/  IPin ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_8__ AVISplitterImpl ;
typedef  TYPE_9__ ALLOCATOR_PROPERTIES ;

/* Variables and functions */
 int AVIF_MUSTUSEINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 scalar_t__ FUNC2 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_9__*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
#define  FOURCC_LIST 132 
 scalar_t__ FOURCC_RIFF ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 void* FUNC15 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ ckidAVIOLDINDEX ; 
#define  ckidAVIPADDING 131 
#define  ckidMAINAVIHEADER 130 
#define  ckidODML 129 
#define  ckidSTREAMLIST 128 
 scalar_t__ formtypeAVI ; 
 TYPE_7__* FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ listtypeAVIHEADER ; 
 scalar_t__ listtypeAVIMOVIE ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC21(IPin * iface, IPin * pConnectPin, ALLOCATOR_PROPERTIES *props)
{
    PullPin *This = FUNC17(iface);
    HRESULT hr;
    RIFFLIST list;
    LONGLONG pos = 0; /* in bytes */
    BYTE * pBuffer;
    RIFFCHUNK * pCurrentChunk;
    LONGLONG total, avail;
    ULONG x;
    DWORD indexes;

    AVISplitterImpl * pAviSplit = (AVISplitterImpl *)This->pin.pinInfo.pFilter;

    hr = FUNC14(This->pReader, pos, sizeof(list), (BYTE *)&list);
    pos += sizeof(list);

    if (list.fcc != FOURCC_RIFF)
    {
        FUNC8("Input stream not a RIFF file\n");
        return E_FAIL;
    }
    if (list.fccListType != formtypeAVI)
    {
        FUNC8("Input stream not an AVI RIFF file\n");
        return E_FAIL;
    }

    hr = FUNC14(This->pReader, pos, sizeof(list), (BYTE *)&list);
    if (list.fcc != FOURCC_LIST)
    {
        FUNC8("Expected LIST chunk, but got %.04s\n", (LPSTR)&list.fcc);
        return E_FAIL;
    }
    if (list.fccListType != listtypeAVIHEADER)
    {
        FUNC8("Header list expected. Got: %.04s\n", (LPSTR)&list.fccListType);
        return E_FAIL;
    }

    pBuffer = FUNC11(FUNC10(), 0, list.cb - sizeof(RIFFLIST) + sizeof(RIFFCHUNK));
    hr = FUNC14(This->pReader, pos + sizeof(list), list.cb - sizeof(RIFFLIST) + sizeof(RIFFCHUNK), pBuffer);

    pAviSplit->AviHeader.cb = 0;

    /* Stream list will set the buffer size here, so set a default and allow an override */
    props->cbBuffer = 0x20000;

    for (pCurrentChunk = (RIFFCHUNK *)pBuffer; (BYTE *)pCurrentChunk + sizeof(*pCurrentChunk) < pBuffer + list.cb; pCurrentChunk = (RIFFCHUNK *)(((BYTE *)pCurrentChunk) + sizeof(*pCurrentChunk) + pCurrentChunk->cb))
    {
        RIFFLIST * pList;

        switch (pCurrentChunk->fcc)
        {
        case ckidMAINAVIHEADER:
            /* AVIMAINHEADER includes the structure that is pCurrentChunk at the moment */
            FUNC18(&pAviSplit->AviHeader, pCurrentChunk, sizeof(pAviSplit->AviHeader));
            break;
        case FOURCC_LIST:
            pList = (RIFFLIST *)pCurrentChunk;
            switch (pList->fccListType)
            {
            case ckidSTREAMLIST:
                hr = FUNC4(pAviSplit, (BYTE *)pCurrentChunk + sizeof(RIFFLIST), pCurrentChunk->cb + sizeof(RIFFCHUNK) - sizeof(RIFFLIST), props);
                break;
            case ckidODML:
                hr = FUNC2(pAviSplit, (BYTE *)pCurrentChunk + sizeof(RIFFLIST), pCurrentChunk->cb + sizeof(RIFFCHUNK) - sizeof(RIFFLIST));
                break;
            }
            break;
        case ckidAVIPADDING:
            /* ignore */
            break;
        default:
            FUNC9("unrecognised header list type: %.04s\n", (LPSTR)&pCurrentChunk->fcc);
        }
    }
    FUNC12(FUNC10(), 0, pBuffer);

    if (pAviSplit->AviHeader.cb != sizeof(pAviSplit->AviHeader) - sizeof(RIFFCHUNK))
    {
        FUNC8("Avi Header wrong size!\n");
        return E_FAIL;
    }

    /* Skip any chunks until we find the LIST chunk */
    do
    {
        pos += sizeof(RIFFCHUNK) + list.cb;
        hr = FUNC14(This->pReader, pos, sizeof(list), (BYTE *)&list);
    }
    while (hr == S_OK && (list.fcc != FOURCC_LIST || list.fccListType != listtypeAVIMOVIE));

    if (hr != S_OK)
    {
        FUNC8("Failed to find LIST chunk from AVI file\n");
        return E_FAIL;
    }

    FUNC13(This->pReader, &total, &avail);

    /* FIXME: AVIX files are extended beyond the FOURCC chunk "AVI ", and thus won't be played here,
     * once I get one of the files I'll try to fix it */
    This->rtStart = pAviSplit->CurrentChunkOffset = FUNC15(pos + sizeof(RIFFLIST));
    pos += list.cb + sizeof(RIFFCHUNK);

    pAviSplit->EndOfFile = This->rtStop = FUNC15(pos);
    if (pos > total)
    {
        FUNC8("File smaller (%s) then EndOfFile (%s)\n", FUNC20(total), FUNC20(pAviSplit->EndOfFile));
        return E_FAIL;
    }

    hr = FUNC14(This->pReader, FUNC5(pAviSplit->CurrentChunkOffset), sizeof(pAviSplit->CurrentChunk), (BYTE *)&pAviSplit->CurrentChunk);

    props->cbAlign = 1;
    props->cbPrefix = 0;
    /* Comrades, prevent shortage of buffers, or you will feel the consequences! DA! */
    props->cBuffers = 2 * pAviSplit->Parser.cStreams;

    /* Now peek into the idx1 index, if available */
    if (hr == S_OK && (total - pos) > sizeof(RIFFCHUNK))
    {
        FUNC19(&list, 0, sizeof(list));

        hr = FUNC14(This->pReader, pos, sizeof(list), (BYTE *)&list);
        if (list.fcc == ckidAVIOLDINDEX)
        {
            pAviSplit->oldindex = FUNC7(pAviSplit->oldindex, list.cb + sizeof(RIFFCHUNK));
            if (pAviSplit->oldindex)
            {
                hr = FUNC14(This->pReader, pos, sizeof(RIFFCHUNK) + list.cb, (BYTE *)pAviSplit->oldindex);
                if (hr == S_OK)
                {
                    hr = FUNC3(pAviSplit);
                }
                else
                {
                    FUNC6(pAviSplit->oldindex);
                    pAviSplit->oldindex = NULL;
                    hr = S_OK;
                }
            }
        }
    }

    indexes = 0;
    for (x = 0; x < pAviSplit->Parser.cStreams; ++x)
        if (pAviSplit->streams[x].entries)
            ++indexes;

    if (indexes)
    {
        FUNC6(pAviSplit->oldindex);
        pAviSplit->oldindex = NULL;
        if (indexes < pAviSplit->Parser.cStreams)
        {
            /* This error could possible be survived by switching to old type index,
             * but I would rather find out why it doesn't find everything here
             */
            FUNC8("%d indexes expected, but only have %d\n", indexes, pAviSplit->Parser.cStreams);
            indexes = 0;
        }
    }
    else if (pAviSplit->oldindex)
        indexes = pAviSplit->Parser.cStreams;

    if (!indexes && pAviSplit->AviHeader.dwFlags & AVIF_MUSTUSEINDEX)
    {
        FUNC9("No usable index was found!\n");
        hr = E_FAIL;
    }

    /* Now, set up the streams */
    if (hr == S_OK)
        hr = FUNC1(pAviSplit);

    if (hr != S_OK)
    {
        FUNC0(pAviSplit);
        return E_FAIL;
    }

    FUNC16("AVI File ok\n");

    return hr;
}