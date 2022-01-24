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
struct dxbc {int dummy; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TAG_DXBC ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dxbc*,scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dxbc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int) ; 

HRESULT FUNC8(const char *data, SIZE_T data_size, struct dxbc *dxbc)
{
    const char *ptr = data;
    HRESULT hr;
    unsigned int i;
    DWORD tag, total_size, chunk_count;

    if (!data)
    {
        FUNC2("No data supplied.\n");
        return E_FAIL;
    }

    FUNC6(&ptr, &tag);
    FUNC1("tag: %s.\n", FUNC3((const char *)&tag, 4));

    if (tag != TAG_DXBC)
    {
        FUNC2("Wrong tag.\n");
        return E_FAIL;
    }

    /* checksum? */
    FUNC7(&ptr, 4);

    FUNC7(&ptr, 1);

    FUNC6(&ptr, &total_size);
    FUNC1("total size: %#x\n", total_size);

    if (data_size != total_size)
    {
        FUNC2("Wrong size supplied.\n");
        return D3DERR_INVALIDCALL;
    }

    FUNC6(&ptr, &chunk_count);
    FUNC1("chunk count: %#x\n", chunk_count);

    hr = FUNC5(dxbc, chunk_count);
    if (FUNC0(hr))
    {
        FUNC2("Failed to init dxbc\n");
        return hr;
    }

    for (i = 0; i < chunk_count; ++i)
    {
        DWORD chunk_tag, chunk_size;
        const char *chunk_ptr;
        DWORD chunk_offset;

        FUNC6(&ptr, &chunk_offset);
        FUNC1("chunk %u at offset %#x\n", i, chunk_offset);

        chunk_ptr = data + chunk_offset;

        FUNC6(&chunk_ptr, &chunk_tag);
        FUNC6(&chunk_ptr, &chunk_size);

        hr = FUNC4(dxbc, chunk_tag, chunk_ptr, chunk_size);
        if (FUNC0(hr))
        {
            FUNC2("Failed to add section to dxbc\n");
            return hr;
        }
    }

    return hr;
}