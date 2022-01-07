
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_3__ {int * type; int member_4; int member_3; int member_2; int member_1; int * member_0; } ;
typedef int PVOID ;
typedef int PKULL_M_HANDLE_ENUM_CALLBACK ;
typedef int NTSTATUS ;
typedef int LPCTSTR ;
typedef TYPE_1__ HANDLE_ENUM_DATA ;
typedef int DWORD ;


 int RtlInitUnicodeString (int *,int ) ;
 int kull_m_handle_getHandles (int ,TYPE_1__*) ;
 int kull_m_handle_getHandlesOfType_callback ;

NTSTATUS kull_m_handle_getHandlesOfType(PKULL_M_HANDLE_ENUM_CALLBACK callBack, LPCTSTR type, DWORD dwDesiredAccess, DWORD dwOptions, PVOID pvArg)
{
 UNICODE_STRING uStr;
 HANDLE_ENUM_DATA data = {((void*)0), dwDesiredAccess, dwOptions, callBack, pvArg};
 if(type)
 {
  RtlInitUnicodeString(&uStr, type);
  data.type = &uStr;
 }
 return kull_m_handle_getHandles(kull_m_handle_getHandlesOfType_callback, &data);
}
