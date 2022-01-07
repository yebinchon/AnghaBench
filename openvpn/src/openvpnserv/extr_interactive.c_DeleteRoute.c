
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PMIB_IPFORWARD_ROW2 ;
typedef int DWORD ;


 int DeleteIpForwardEntry2 (int ) ;

__attribute__((used)) static DWORD
DeleteRoute(PMIB_IPFORWARD_ROW2 fwd_row)
{
    return DeleteIpForwardEntry2(fwd_row);
}
