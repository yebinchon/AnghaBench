
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
typedef int BOOL ;


 int NT_SUCCESS (int ) ;
 int RtlNtStatusToDosError (int ) ;
 int SetLastError (int ) ;

__attribute__((used)) static __inline BOOL set_ntstatus( NTSTATUS status )
{
    if (!NT_SUCCESS(status)) SetLastError( RtlNtStatusToDosError( status ));
    return NT_SUCCESS(status);
}
