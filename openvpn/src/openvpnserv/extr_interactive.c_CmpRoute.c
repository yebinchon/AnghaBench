
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_IPFORWARD_ROW2 ;
typedef int LPVOID ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static BOOL
CmpRoute(LPVOID item, LPVOID route)
{
    return memcmp(item, route, sizeof(MIB_IPFORWARD_ROW2)) == 0 ? TRUE : FALSE;
}
