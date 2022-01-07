
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ Data1; scalar_t__ Data2; scalar_t__ Data3; scalar_t__ Data4; } ;
typedef TYPE_1__ GUID ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL IsNullGuid(GUID* Guid)
{
 if (Guid->Data1 == 0 && Guid->Data2 == 0 && Guid->Data3 == 0 &&
  ((ULONG *)Guid->Data4)[0] == 0 && ((ULONG *)Guid->Data4)[1] == 0)
 {
  return TRUE;
 }
 return FALSE;
}
