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
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  csFilter; } ;
struct TYPE_6__ {scalar_t__ bufferLen; int grabberMethod; int /*<<< orphan*/  grabberIface; TYPE_1__ filter; int /*<<< orphan*/ * bufferData; } ;
typedef  TYPE_2__ SG_Impl ;
typedef  int REFERENCE_TIME ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IMediaSample ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(SG_Impl *This, IMediaSample *sample)
{
    double time = 0.0;
    REFERENCE_TIME tStart, tEnd;
    if (This->bufferLen >= 0) {
        BYTE *data = 0;
        LONG size = FUNC7(sample);
        if (size >= 0 && FUNC14(FUNC8(sample, &data))) {
            if (!data)
                size = 0;
            FUNC4(&This->filter.csFilter);
            if (This->bufferLen != size) {
                FUNC1(This->bufferData);
                This->bufferData = size ? FUNC0(size) : NULL;
                This->bufferLen = size;
            }
            if (size)
                FUNC2(This->bufferData, data, size);
            FUNC13(&This->filter.csFilter);
        }
    }
    if (!This->grabberIface)
        return;
    if (FUNC14(FUNC9(sample, &tStart, &tEnd)))
        time = 1e-7 * tStart;
    switch (This->grabberMethod) {
        case 0:
	    {
		ULONG ref = FUNC6(sample);
		FUNC12(This->grabberIface, time, sample);
		ref = FUNC10(sample) + 1 - ref;
		if (ref)
		{
		    FUNC3("(%p) Callback referenced sample %p by %u\n", This, sample, ref);
		    /* ugly as hell but some apps are sooo buggy */
		    while (ref--)
			FUNC10(sample);
		}
	    }
            break;
        case 1:
            {
                BYTE *data = 0;
                LONG size = FUNC7(sample);
                if (size && FUNC14(FUNC8(sample, &data)) && data)
                    FUNC11(This->grabberIface, time, data, size);
            }
            break;
        case -1:
            break;
        default:
            FUNC5("unsupported method %d\n", This->grabberMethod);
            /* do not bother us again */
            This->grabberMethod = -1;
    }
}