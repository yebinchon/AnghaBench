
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int HANDLE ;


 int ARRAYSIZE (int *) ;
 int ConStreamSetOSHandle (int ,int ) ;
 int * ExtraHandles ;
 scalar_t__ STD_INPUT_HANDLE ;
 int SetStdHandle (scalar_t__,int ) ;
 int * StdStreams ;

VOID SetHandle(UINT Number, HANDLE Handle)
{
    if (Number < 3)
    {
        ConStreamSetOSHandle(StdStreams[Number], Handle);

        SetStdHandle(STD_INPUT_HANDLE - Number, Handle);
    }
    else if (Number < ARRAYSIZE(ExtraHandles) + 3)
        ExtraHandles[Number - 3] = Handle;
}
