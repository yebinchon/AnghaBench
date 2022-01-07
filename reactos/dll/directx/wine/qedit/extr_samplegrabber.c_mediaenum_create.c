
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int cbFormat; int majortype; int * pbFormat; int * pUnk; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ IEnumMediaTypes_iface; TYPE_3__ mtype; int past; } ;
typedef TYPE_1__ ME_Impl ;
typedef TYPE_2__ IEnumMediaTypes ;
typedef int BOOL ;
typedef TYPE_3__ AM_MEDIA_TYPE ;


 void* CoTaskMemAlloc (int) ;
 int CopyMemory (int *,int *,int) ;
 int GUID_NULL ;
 int IEnumMediaTypes_VTable ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static IEnumMediaTypes *mediaenum_create(const AM_MEDIA_TYPE *mtype, BOOL past)
{
    ME_Impl *obj = CoTaskMemAlloc(sizeof(ME_Impl));

    if (!obj)
        return ((void*)0);
    ZeroMemory(obj, sizeof(*obj));
    obj->IEnumMediaTypes_iface.lpVtbl = &IEnumMediaTypes_VTable;
    obj->refCount = 1;
    obj->past = past;
    if (mtype) {
        obj->mtype = *mtype;
        obj->mtype.pUnk = ((void*)0);
        if (mtype->cbFormat) {
            obj->mtype.pbFormat = CoTaskMemAlloc(mtype->cbFormat);
            CopyMemory(obj->mtype.pbFormat, mtype->pbFormat, mtype->cbFormat);
        }
        else
            obj->mtype.pbFormat = ((void*)0);
    }
    else
        obj->mtype.majortype = GUID_NULL;

    return &obj->IEnumMediaTypes_iface;
}
