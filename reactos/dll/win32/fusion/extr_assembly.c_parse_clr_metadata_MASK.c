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
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {void* blobs; void* strings; int /*<<< orphan*/  nthdr; TYPE_3__* metadatahdr; int /*<<< orphan*/  data; TYPE_2__* corhdr; } ;
struct TYPE_13__ {scalar_t__ Offset; } ;
struct TYPE_12__ {scalar_t__ Streams; } ;
struct TYPE_10__ {scalar_t__ VirtualAddress; } ;
struct TYPE_11__ {TYPE_1__ MetaData; } ;
typedef  TYPE_4__ METADATASTREAMHDR ;
typedef  scalar_t__ LPSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_5__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 void* FUNC2 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC8(ASSEMBLY *assembly)
{
    METADATASTREAMHDR *streamhdr;
    ULONG rva, i, ofs;
    LPSTR stream;
    HRESULT hr;
    DWORD hdrsz;
    BYTE *ptr;

    hr = FUNC6(assembly, &hdrsz);
    if (FUNC0(hr))
        return hr;

    rva = assembly->corhdr->MetaData.VirtualAddress;
    ptr = FUNC1(assembly->nthdr, assembly->data, rva + hdrsz, NULL);
    if (!ptr)
        return E_FAIL;

    for (i = 0; i < assembly->metadatahdr->Streams; i++)
    {
        streamhdr = (METADATASTREAMHDR *)ptr;
        ofs = FUNC7(assembly->nthdr, rva + streamhdr->Offset);

        ptr += sizeof(METADATASTREAMHDR);
        stream = (LPSTR)ptr;

        if (!FUNC3(stream, "#~"))
        {
            hr = FUNC5(assembly, ofs);
            if (FUNC0(hr))
                return hr;
        }
        else if (!FUNC3(stream, "#Strings") || !FUNC3(stream, "Strings"))
            assembly->strings = FUNC2(assembly, ofs);
        else if (!FUNC3(stream, "#Blob") || !FUNC3(stream, "Blob"))
            assembly->blobs = FUNC2(assembly, ofs);

        ptr += ((FUNC4(stream) + 1) + 3) & ~3; /* align on DWORD boundary */
    }

    return S_OK;
}