
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;
typedef scalar_t__ HFCI ;
typedef TYPE_1__ FCI_Int ;


 int ERROR_INVALID_HANDLE ;
 scalar_t__ FCI_INT_MAGIC ;
 int SetLastError (int ) ;

__attribute__((used)) static FCI_Int *get_fci_ptr( HFCI hfci )
{
    FCI_Int *fci= (FCI_Int *)hfci;

    if (!fci || fci->magic != FCI_INT_MAGIC)
    {
        SetLastError( ERROR_INVALID_HANDLE );
        return ((void*)0);
    }
    return fci;
}
