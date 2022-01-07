
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hashdata ;
typedef int WORD ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_7__ {int blobsz; TYPE_1__* tables; } ;
struct TYPE_6__ {int offset; } ;
typedef int * LPWSTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BCRYPT_ALG_HANDLE ;
typedef TYPE_2__ ASSEMBLY ;


 int ASSEMBLYTABLE ;
 int BCRYPT_SHA1_ALGORITHM ;
 int BCryptCloseAlgorithmProvider (int ,int ) ;
 scalar_t__ BCryptHash (int ,int *,int ,int *,int,int *,int) ;
 scalar_t__ BCryptOpenAlgorithmProvider (int *,int ,int ,int ) ;
 int BYTES_PER_TOKEN ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIELD_OFFSET (int ,int ) ;
 int MS_PRIMITIVE_PROVIDER ;
 int PublicKey ;
 scalar_t__ STATUS_SUCCESS ;
 int S_OK ;
 int TOKEN_LENGTH ;
 size_t TableFromToken (int ) ;
 int * assembly_data_offset (TYPE_2__*,int) ;
 int * assembly_get_blob (TYPE_2__*,int ,int*) ;
 int * heap_alloc (int) ;
 int mdtAssembly ;
 int token_to_str (int *,int *) ;

HRESULT assembly_get_pubkey_token(ASSEMBLY *assembly, LPWSTR *token)
{
    ULONG i, size;
    LONG offset;
    BYTE hashdata[20], *pubkey, *ptr;
    BCRYPT_ALG_HANDLE alg;
    BYTE tokbytes[BYTES_PER_TOKEN];
    HRESULT hr = E_FAIL;
    LPWSTR tok;
    DWORD idx;

    *token = ((void*)0);

    offset = assembly->tables[TableFromToken(mdtAssembly)].offset;
    if (offset == -1)
        return E_FAIL;

    ptr = assembly_data_offset(assembly, offset);
    if (!ptr)
        return E_FAIL;

    ptr += FIELD_OFFSET(ASSEMBLYTABLE, PublicKey);
    if (assembly->blobsz == sizeof(DWORD))
        idx = *(DWORD *)ptr;
    else
        idx = *(WORD *)ptr;

    pubkey = assembly_get_blob(assembly, idx, &size);

    if (BCryptOpenAlgorithmProvider(&alg, BCRYPT_SHA1_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0) != STATUS_SUCCESS)
        return E_FAIL;

    if (BCryptHash(alg, ((void*)0), 0, pubkey, size, hashdata, sizeof(hashdata)) != STATUS_SUCCESS)
    {
        hr = E_FAIL;
        goto done;
    }

    size = sizeof(hashdata);
    for (i = size - 1; i >= size - 8; i--)
        tokbytes[size - i - 1] = hashdata[i];

    if (!(tok = heap_alloc((TOKEN_LENGTH + 1) * sizeof(WCHAR))))
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }

    token_to_str(tokbytes, tok);

    *token = tok;
    hr = S_OK;

done:
    BCryptCloseAlgorithmProvider(alg, 0);
    return hr;
}
