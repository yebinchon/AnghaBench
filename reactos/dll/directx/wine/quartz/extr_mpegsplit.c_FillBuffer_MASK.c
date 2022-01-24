#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  csFilter; } ;
struct TYPE_12__ {double dRate; int /*<<< orphan*/  llStop; } ;
struct TYPE_14__ {TYPE_2__ filter; TYPE_1__ sourceSeeking; TYPE_5__* pInputPin; int /*<<< orphan*/ * ppPins; } ;
struct TYPE_18__ {int position; TYPE_3__ Parser; int /*<<< orphan*/ * header; } ;
struct TYPE_15__ {int tStart; double dRate; int /*<<< orphan*/  IPin_iface; } ;
struct TYPE_11__ {TYPE_4__ pin; } ;
struct TYPE_17__ {TYPE_10__ pin; } ;
struct TYPE_16__ {int rtNext; int rtStop; int rtCurrent; int /*<<< orphan*/  pReader; int /*<<< orphan*/  pAlloc; int /*<<< orphan*/  cbAlign; } ;
typedef  TYPE_5__ PullPin ;
typedef  TYPE_6__ Parser_OutputPin ;
typedef  TYPE_7__ MPEGSplitterImpl ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IMediaSample ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,int*,int*) ; 
 TYPE_6__* FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC31(MPEGSplitterImpl *This, IMediaSample *pCurrentSample)
{
    Parser_OutputPin * pOutputPin = FUNC30(This->Parser.ppPins[1]);
    LONGLONG length = 0;
    LONGLONG pos = FUNC1(This->Parser.pInputPin->rtNext);
    LONGLONG time = This->position, rtstop, rtstart;
    HRESULT hr;
    BYTE *fbuf = NULL;
    DWORD len = FUNC8(pCurrentSample);

    FUNC25("Source length: %u\n", len);
    FUNC9(pCurrentSample, &fbuf);

    /* Find the next valid header.. it <SHOULD> be right here */
    hr = FUNC29(fbuf, &length, &This->position);
    FUNC26(hr == S_OK);
    FUNC12(pCurrentSample, length);

    /* Queue the next sample */
    if (length + 4 == len)
    {
        PullPin *pin = This->Parser.pInputPin;
        LONGLONG stop = FUNC1(pin->rtStop);

        hr = S_OK;
        FUNC27(This->header, fbuf + length, 4);
        while (FUNC4(hr = FUNC29(This->header, &length, NULL)))
        {
            FUNC28(This->header, This->header+1, 3);
            if (pos + 4 >= stop)
                break;
            FUNC7(pin->pReader, ++pos, 1, This->header + 3);
        }
        pin->rtNext = FUNC23(pos);

        if (FUNC24(hr))
        {
            /* Remove 4 for the last header, which should hopefully work */
            IMediaSample *sample = NULL;
            LONGLONG rtSampleStart = pin->rtNext - FUNC23(4);
            LONGLONG rtSampleStop = rtSampleStart + FUNC23(length + 4);

            if (rtSampleStop > pin->rtStop)
                rtSampleStop = FUNC23(FUNC0(FUNC1(pin->rtStop), pin->cbAlign));

            hr = FUNC18(pin->pAlloc, &sample, NULL, NULL, 0);
            if (FUNC24(hr))
            {
                FUNC17(sample, &rtSampleStart, &rtSampleStop);
                FUNC15(sample, FALSE);
                FUNC13(sample, FALSE);
                FUNC16(sample, TRUE);
                hr = FUNC6(pin->pReader, sample, 0);
                if (FUNC24(hr))
                {
                    pin->rtCurrent = rtSampleStart;
                    pin->rtNext = rtSampleStop;
                }
                else
                    FUNC11(sample);
            }
            if (FUNC4(hr))
                FUNC5("o_Ox%08x\n", hr);
        }
    }
    /* If not, we're presumably at the end of file */

    FUNC25("Media time : %u.%03u\n", (DWORD)(This->position/10000000), (DWORD)((This->position/10000)%1000));

    if (FUNC10(pCurrentSample) == S_OK) {
        IPin *victim;
        FUNC3(&This->Parser.filter.csFilter);
        pOutputPin->pin.pin.tStart = time;
        pOutputPin->pin.pin.dRate = This->Parser.sourceSeeking.dRate;
        hr = FUNC19(&pOutputPin->pin.pin.IPin_iface, &victim);
        if (hr == S_OK)
        {
            hr = FUNC20(victim, time, This->Parser.sourceSeeking.llStop,
                                 This->Parser.sourceSeeking.dRate);
            if (hr != S_OK)
                FUNC5("NewSegment returns %08x\n", hr);
            FUNC21(victim);
        }
        FUNC22(&This->Parser.filter.csFilter);
        if (hr != S_OK)
            return hr;
    }
    rtstart = (double)(time - pOutputPin->pin.pin.tStart) / pOutputPin->pin.pin.dRate;
    rtstop = (double)(This->position - pOutputPin->pin.pin.tStart) / pOutputPin->pin.pin.dRate;
    FUNC17(pCurrentSample, &rtstart, &rtstop);
    FUNC14(pCurrentSample, &time, &This->position);

    hr = FUNC2(&pOutputPin->pin, pCurrentSample);

    if (hr != S_OK)
    {
        if (hr != S_FALSE)
            FUNC25("Error sending sample (%x)\n", hr);
        else
            FUNC25("S_FALSE (%d), holding\n", FUNC8(pCurrentSample));
    }

    return hr;
}