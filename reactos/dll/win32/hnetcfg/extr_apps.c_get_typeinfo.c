
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum type_id { ____Placeholder_type_id } type_id ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,int ,...) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_AddRef (int *) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int ,int **) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LIBID_NetFwPublicTypeLib ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LoadRegTypeLib (int *,int,int ,int ,int **) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int * tid_id ;
 int ** typeinfo ;
 int typelib ;

HRESULT get_typeinfo( enum type_id tid, ITypeInfo **ret )
{
    HRESULT hr;

    if (!typelib)
    {
        ITypeLib *lib;

        hr = LoadRegTypeLib( &LIBID_NetFwPublicTypeLib, 1, 0, LOCALE_SYSTEM_DEFAULT, &lib );
        if (FAILED(hr))
        {
            ERR("LoadRegTypeLib failed: %08x\n", hr);
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)&typelib, lib, ((void*)0) ))
            ITypeLib_Release( lib );
    }
    if (!typeinfo[tid])
    {
        ITypeInfo *info;

        hr = ITypeLib_GetTypeInfoOfGuid( typelib, tid_id[tid], &info );
        if (FAILED(hr))
        {
            ERR("GetTypeInfoOfGuid(%s) failed: %08x\n", debugstr_guid(tid_id[tid]), hr);
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)(typeinfo + tid), info, ((void*)0) ))
            ITypeInfo_Release( info );
    }
    *ret = typeinfo[tid];
    ITypeInfo_AddRef(typeinfo[tid]);
    return S_OK;
}
