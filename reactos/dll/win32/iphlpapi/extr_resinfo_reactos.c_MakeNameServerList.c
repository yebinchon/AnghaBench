
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef scalar_t__ PNAME_SERVER_LIST_PRIVATE ;
typedef int LSTATUS ;


 int CreateNameServerListCallbackTrampoline ;
 int EnumInterfaces (int ,int ) ;

LSTATUS
MakeNameServerList(
    PNAME_SERVER_LIST_PRIVATE PrivateData )
{
    return EnumInterfaces(CreateNameServerListCallbackTrampoline, (PVOID)PrivateData);
}
