
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subtype; int type; } ;
typedef TYPE_1__ DMO_PARTIAL_MEDIATYPE ;
typedef int BOOL ;


 int GUID_NULL ;
 scalar_t__ IsEqualCLSID (int *,int *) ;

__attribute__((used)) static BOOL IsMediaTypeEqual(const DMO_PARTIAL_MEDIATYPE* mt1, const DMO_PARTIAL_MEDIATYPE* mt2)
{

    return (IsEqualCLSID(&mt1->type, &mt2->type) ||
            IsEqualCLSID(&mt2->type, &GUID_NULL) ||
            IsEqualCLSID(&mt1->type, &GUID_NULL)) &&
            (IsEqualCLSID(&mt1->subtype, &mt2->subtype) ||
            IsEqualCLSID(&mt2->subtype, &GUID_NULL) ||
            IsEqualCLSID(&mt1->subtype, &GUID_NULL));
}
