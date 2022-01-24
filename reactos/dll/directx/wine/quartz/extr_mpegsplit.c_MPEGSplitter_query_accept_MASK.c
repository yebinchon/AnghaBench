#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/  majortype; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ AM_MEDIA_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEDIASUBTYPE_MPEG1Audio ; 
 int /*<<< orphan*/  MEDIASUBTYPE_MPEG1System ; 
 int /*<<< orphan*/  MEDIASUBTYPE_MPEG1Video ; 
 int /*<<< orphan*/  MEDIASUBTYPE_MPEG1VideoCD ; 
 int /*<<< orphan*/  MEDIATYPE_Stream ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(LPVOID iface, const AM_MEDIA_TYPE *pmt)
{
    if (!FUNC1(&pmt->majortype, &MEDIATYPE_Stream))
        return S_FALSE;

    if (FUNC1(&pmt->subtype, &MEDIASUBTYPE_MPEG1Audio))
        return S_OK;

    if (FUNC1(&pmt->subtype, &MEDIASUBTYPE_MPEG1Video))
        FUNC0("MPEG-1 video streams not yet supported.\n");
    else if (FUNC1(&pmt->subtype, &MEDIASUBTYPE_MPEG1System))
        FUNC0("MPEG-1 system streams not yet supported.\n");
    else if (FUNC1(&pmt->subtype, &MEDIASUBTYPE_MPEG1VideoCD))
        FUNC0("MPEG-1 VideoCD streams not yet supported.\n");
    else FUNC0("%s\n", FUNC2(&pmt->subtype));

    return S_FALSE;
}