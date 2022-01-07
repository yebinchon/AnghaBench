
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_UNICASTIPADDRESS_ROW ;
typedef int LPVOID ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static BOOL
CmpAddress(LPVOID item, LPVOID address)
{
    return memcmp(item, address, sizeof(MIB_UNICASTIPADDRESS_ROW)) == 0 ? TRUE : FALSE;
}
