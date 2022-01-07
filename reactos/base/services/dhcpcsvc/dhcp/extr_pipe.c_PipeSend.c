
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int COMM_DHCP_REPLY ;
typedef scalar_t__ BOOL ;


 int CommPipe ;
 scalar_t__ WriteFile (int ,int *,int,int*,int *) ;

DWORD PipeSend( COMM_DHCP_REPLY *Reply ) {
    DWORD Written = 0;
    BOOL Success =
        WriteFile( CommPipe,
                   Reply,
                   sizeof(*Reply),
                   &Written,
                   ((void*)0) );
    return Success ? Written : -1;
}
