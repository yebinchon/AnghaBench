#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static HRESULT FUNC3(IStream *stream, void *data, ULONG size)
{
    ULONG bytes_read;
    HRESULT hr;

    hr = FUNC1(stream, data, size, &bytes_read);
    if(FUNC0(hr)){
        FUNC2("IStream_Read failed: %08x\n", hr);
        return hr;
    }
    if (bytes_read < size) {
        FUNC2("Didn't read full chunk: %u < %u\n", bytes_read, size);
        return E_FAIL;
    }

    return S_OK;
}