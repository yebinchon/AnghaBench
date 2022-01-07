
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISecurityObjectTypeInfo {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;
typedef int PCRegKeySecurity ;


 int CRegKeySecurity ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpISecurityObjectTypeInfoVtbl ;

__attribute__((used)) static __inline PCRegKeySecurity
impl_from_ISecurityObjectTypeInfo(struct ISecurityObjectTypeInfo *iface)
{
    return (PCRegKeySecurity)((ULONG_PTR)iface - FIELD_OFFSET(CRegKeySecurity,
                                                              lpISecurityObjectTypeInfoVtbl));
}
