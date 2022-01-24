#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ llStop; } ;
struct TYPE_11__ {unsigned int cStreams; int /*<<< orphan*/ * ppPins; TYPE_1__ sourceSeeking; TYPE_4__* pInputPin; } ;
struct TYPE_12__ {scalar_t__ EndOfFile; TYPE_2__ Parser; } ;
typedef  TYPE_3__ WAVEParserImpl ;
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  dwSamplesProcessed; } ;
struct TYPE_13__ {scalar_t__ rtNext; scalar_t__ rtStop; scalar_t__ rtCurrent; int /*<<< orphan*/  pReader; int /*<<< orphan*/  cbAlign; int /*<<< orphan*/  pAlloc; } ;
typedef  scalar_t__ REFERENCE_TIME ;
typedef  TYPE_4__ PullPin ;
typedef  TYPE_5__ Parser_OutputPin ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONGLONG ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IMediaSample ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VFW_E_NOT_CONNECTED ; 
 scalar_t__ VFW_E_WRONG_STATE ; 
 scalar_t__ FUNC21 (TYPE_3__*,scalar_t__) ; 
 TYPE_5__* FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC23(LPVOID iface, IMediaSample * pSample, DWORD_PTR cookie)
{
    WAVEParserImpl *This = iface;
    LPBYTE pbSrcStream = NULL;
    ULONG cbSrcStream = 0;
    REFERENCE_TIME tStart, tStop;
    HRESULT hr;
    IMediaSample *newsample = NULL;
    Parser_OutputPin *pOutputPin;
    PullPin *pin = This->Parser.pInputPin;

    FUNC7(pSample, &pbSrcStream);
    hr = FUNC9(pSample, &tStart, &tStop);

    cbSrcStream = FUNC6(pSample);

    /* Flush occurring */
    if (cbSrcStream == 0)
    {
        FUNC20(".. Why do I need you?\n");
        return S_OK;
    }

    pOutputPin = FUNC22(This->Parser.ppPins[1]);

    if (FUNC19(hr))
        hr = FUNC14(pin->pAlloc, &newsample, NULL, NULL, 0);

    if (FUNC19(hr))
    {
        LONGLONG rtSampleStart = pin->rtNext;
        /* Add 4 for the next header, which should hopefully work */
        LONGLONG rtSampleStop = rtSampleStart + FUNC18(FUNC8(newsample));

        if (rtSampleStop > pin->rtStop)
            rtSampleStop = FUNC18(FUNC0(FUNC1(pin->rtStop), pin->cbAlign));

        FUNC13(newsample, &rtSampleStart, &rtSampleStop);

        pin->rtCurrent = pin->rtNext;
        pin->rtNext = rtSampleStop;

        FUNC11(newsample, FALSE);
        FUNC10(newsample, FALSE);
        FUNC12(newsample, TRUE);

        hr = FUNC5(pin->pReader, newsample, 0);
    }

    if (FUNC19(hr))
    {
        REFERENCE_TIME tAviStart, tAviStop;

        FUNC12(pSample, TRUE);
        pOutputPin->dwSamplesProcessed++;

        tAviStart = FUNC21(This, tStart);
        tAviStop = FUNC21(This, tStart + FUNC18(FUNC6(pSample)));

        FUNC13(pSample, &tAviStart, &tAviStop);

        hr = FUNC2(&pOutputPin->pin, pSample);
        if (hr != S_OK && hr != S_FALSE && hr != VFW_E_WRONG_STATE)
            FUNC3("Error sending sample (%x)\n", hr);
        else if (hr != S_OK)
            /* Unset progression if denied! */
            This->Parser.pInputPin->rtCurrent = tStart;
    }

    if (tStop >= This->EndOfFile || (FUNC21(This, tStop) >= This->Parser.sourceSeeking.llStop) || hr == VFW_E_NOT_CONNECTED)
    {
        unsigned int i;

        FUNC20("End of file reached\n");

        for (i = 0; i < This->Parser.cStreams; i++)
        {
            IPin* ppin;
            HRESULT hr;

            FUNC20("Send End Of Stream to output pin %u\n", i);

            hr = FUNC15(This->Parser.ppPins[i+1], &ppin);
            if (FUNC19(hr))
            {
                hr = FUNC16(ppin);
                FUNC17(ppin);
            }
            if (FUNC4(hr))
            {
                FUNC3("%x\n", hr);
                break;
            }
        }

        /* Force the pullpin thread to stop */
        hr = S_FALSE;
    }

    return hr;
}