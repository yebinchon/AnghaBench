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
struct chunk_entry {scalar_t__ size; } ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 size_t FUNC2 (scalar_t__,scalar_t__) ; 

HRESULT FUNC3(IStream *stream, const struct chunk_entry *chunk, WCHAR *str,
        ULONG size)
{
    ULONG len;
    HRESULT hr;

    hr = FUNC1(stream, str, FUNC2(chunk->size, size), &len);
    if (FUNC0(hr))
        return hr;

    /* Don't assume the string is properly zero terminated */
    str[FUNC2(len, size - 1)] = 0;

    if (len < chunk->size)
        return S_FALSE;
    return S_OK;
}