#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dxbc {int count; TYPE_1__* sections; } ;
struct TYPE_2__ {int data_size; int tag; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int TAG_DXBC ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dxbc*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,int) ; 

HRESULT FUNC8(struct dxbc *dxbc, ID3DBlob **blob)
{
    DWORD size = 32, offset = size + 4 * dxbc->count;
    ID3DBlob *object;
    HRESULT hr;
    char *ptr;
    unsigned int i;

    FUNC3("dxbc %p, blob %p.\n", dxbc, blob);

    for (i = 0; i < dxbc->count; ++i)
    {
        size += 12 + dxbc->sections[i].data_size;
    }

    hr = FUNC0(size, &object);
    if (FUNC1(hr))
    {
        FUNC4("Failed to create blob\n");
        return hr;
    }

    ptr = FUNC2(object);

    FUNC6(&ptr, TAG_DXBC);

    /* signature(?) */
    FUNC7(&ptr, 0);
    FUNC7(&ptr, 0);
    FUNC7(&ptr, 0);
    FUNC7(&ptr, 0);

    /* seems to be always 1 */
    FUNC7(&ptr, 1);

    /* DXBC size */
    FUNC6(&ptr, size);

    /* chunk count */
    FUNC6(&ptr, dxbc->count);

    /* write the chunk offsets */
    for (i = 0; i < dxbc->count; ++i)
    {
        FUNC6(&ptr, offset);
        offset += 8 + dxbc->sections[i].data_size;
    }

    /* write the chunks */
    for (i = 0; i < dxbc->count; ++i)
    {
        FUNC6(&ptr, dxbc->sections[i].tag);
        FUNC6(&ptr, dxbc->sections[i].data_size);
        FUNC5(ptr, dxbc->sections[i].data, dxbc->sections[i].data_size);
        ptr += dxbc->sections[i].data_size;
    }

    FUNC3("Created ID3DBlob %p\n", object);

    *blob = object;

    return S_OK;
}