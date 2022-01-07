
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int LPWSTR ;
typedef int HKEY ;


 int CreateNameServerListCallback ;
 int EnumNameServers (int ,int ,int ,int ) ;

VOID
CreateNameServerListCallbackTrampoline(
    HKEY ChildKeyHandle,
    LPWSTR ChildKeyName,
    PVOID CallbackContext)
{
    EnumNameServers(ChildKeyHandle, ChildKeyName, CallbackContext, CreateNameServerListCallback);
}
