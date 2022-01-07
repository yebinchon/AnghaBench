
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int * PVOID ;
typedef int PCRegKeySecurity ;
typedef int HRESULT ;


 int CRegKeySecurity_fnAddRef (int ) ;
 int E_NOINTERFACE ;
 int IEffectivePermission ;
 int IID_IEffectivePermission ;
 int IID_IRegKeySecurity ;
 int IID_IRegKeySecurity2 ;
 int IID_ISecurityObjectTypeInfo ;
 int ISecurityInformation ;
 int ISecurityInformation2 ;
 int ISecurityObjectTypeInfo ;
 scalar_t__ IsEqualGUID (int ,int *) ;
 int S_OK ;
 scalar_t__ impl_to_interface (int ,int ) ;

__attribute__((used)) static __inline HRESULT
CRegKeySecurity_fnQueryInterface(PCRegKeySecurity obj,
                                 REFIID iid,
                                 PVOID *pvObject)
{
    PVOID pvObj = ((void*)0);

    if (IsEqualGUID(iid,
                    &IID_IRegKeySecurity))
    {
        pvObj = (PVOID)impl_to_interface(obj,
                                         ISecurityInformation);
    }
    else if (IsEqualGUID(iid,
                         &IID_IEffectivePermission))
    {
        pvObj = (PVOID)impl_to_interface(obj,
                                         IEffectivePermission);
    }
    else if (IsEqualGUID(iid,
                         &IID_ISecurityObjectTypeInfo))
    {
        pvObj = (PVOID)impl_to_interface(obj,
                                         ISecurityObjectTypeInfo);
    }

    if (pvObj == ((void*)0))
    {
        return E_NOINTERFACE;
    }

    *pvObject = pvObj;
    CRegKeySecurity_fnAddRef(obj);

    return S_OK;
}
