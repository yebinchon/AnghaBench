
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HANDLE ;


 int ARRAYSIZE (int *) ;
 int ConStreamGetOSHandle (int ) ;
 int * ExtraHandles ;
 int INVALID_HANDLE_VALUE ;
 int * StdStreams ;

HANDLE GetHandle(UINT Number)
{
    if (Number < 3)
        return ConStreamGetOSHandle(StdStreams[Number]);

    else if (Number < ARRAYSIZE(ExtraHandles) + 3)
        return ExtraHandles[Number - 3];
    else
        return INVALID_HANDLE_VALUE;
}
