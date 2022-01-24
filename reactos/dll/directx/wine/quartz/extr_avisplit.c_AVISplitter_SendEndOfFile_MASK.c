#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ppPins; } ;
struct TYPE_5__ {TYPE_1__ Parser; } ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_2__ AVISplitterImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static HRESULT FUNC5(AVISplitterImpl *This, DWORD streamnumber)
{
    IPin* ppin = NULL;
    HRESULT hr;

    FUNC4("End of file reached\n");

    hr = FUNC0(This->Parser.ppPins[streamnumber+1], &ppin);
    if (FUNC3(hr))
    {
        hr = FUNC1(ppin);
        FUNC2(ppin);
    }
    FUNC4("--> %x\n", hr);

    /* Force the pullpin thread to stop */
    return S_FALSE;
}