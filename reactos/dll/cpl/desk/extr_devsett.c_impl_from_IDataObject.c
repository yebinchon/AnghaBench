
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDataObject {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;
typedef int PCDevSettings ;


 int CDevSettings ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpIDataObjectVtbl ;

__attribute__((used)) static __inline PCDevSettings
impl_from_IDataObject(struct IDataObject *iface)
{
    return (PCDevSettings)((ULONG_PTR)iface - FIELD_OFFSET(CDevSettings,
                                                           lpIDataObjectVtbl));
}
