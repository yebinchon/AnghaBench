
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PHANDLE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAXIMUM_ALLOWED ;
 int NtOpenKey (int ,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS
OpenUsersKey(PHANDLE KeyHandle)
{
    OBJECT_ATTRIBUTES Attributes;
    UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\User");

    TRACE("OpenUsersKey()\n");

    InitializeObjectAttributes(&Attributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
    return NtOpenKey(KeyHandle,
                     MAXIMUM_ALLOWED,
                     &Attributes);
}
