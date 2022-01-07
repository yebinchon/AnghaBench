
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;
typedef scalar_t__ HFDI ;
typedef TYPE_1__ FDI_Int ;


 int ERROR_INVALID_HANDLE ;
 scalar_t__ FDI_INT_MAGIC ;
 int SetLastError (int ) ;

__attribute__((used)) static FDI_Int *get_fdi_ptr( HFDI hfdi )
{
    FDI_Int *fdi= (FDI_Int *)hfdi;

    if (!fdi || fdi->magic != FDI_INT_MAGIC)
    {
        SetLastError( ERROR_INVALID_HANDLE );
        return ((void*)0);
    }
    return fdi;
}
