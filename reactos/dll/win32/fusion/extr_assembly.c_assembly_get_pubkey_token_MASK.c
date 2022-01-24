#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashdata ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_7__ {int blobsz; TYPE_1__* tables; } ;
struct TYPE_6__ {int offset; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BCRYPT_ALG_HANDLE ;
typedef  TYPE_2__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  ASSEMBLYTABLE ; 
 int /*<<< orphan*/  BCRYPT_SHA1_ALGORITHM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BYTES_PER_TOKEN ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_PRIMITIVE_PROVIDER ; 
 int /*<<< orphan*/  PublicKey ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  S_OK ; 
 int TOKEN_LENGTH ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  mdtAssembly ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC9(ASSEMBLY *assembly, LPWSTR *token)
{
    ULONG i, size;
    LONG offset;
    BYTE hashdata[20], *pubkey, *ptr;
    BCRYPT_ALG_HANDLE alg;
    BYTE tokbytes[BYTES_PER_TOKEN];
    HRESULT hr = E_FAIL;
    LPWSTR tok;
    DWORD idx;

    *token = NULL;

    offset = assembly->tables[FUNC4(mdtAssembly)].offset;
    if (offset == -1)
        return E_FAIL;

    ptr = FUNC5(assembly, offset);
    if (!ptr)
        return E_FAIL;

    ptr += FUNC3(ASSEMBLYTABLE, PublicKey);
    if (assembly->blobsz == sizeof(DWORD))
        idx = *(DWORD *)ptr;
    else
        idx = *(WORD *)ptr;

    pubkey = FUNC6(assembly, idx, &size);

    if (FUNC2(&alg, BCRYPT_SHA1_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0) != STATUS_SUCCESS)
        return E_FAIL;

    if (FUNC1(alg, NULL, 0, pubkey, size, hashdata, sizeof(hashdata)) != STATUS_SUCCESS)
    {
        hr = E_FAIL;
        goto done;
    }

    size = sizeof(hashdata);
    for (i = size - 1; i >= size - 8; i--)
        tokbytes[size - i - 1] = hashdata[i];

    if (!(tok = FUNC7((TOKEN_LENGTH + 1) * sizeof(WCHAR))))
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    FUNC8(tokbytes, tok);

    *token = tok;
    hr = S_OK;

done:
    FUNC0(alg, 0);
    return hr;
}