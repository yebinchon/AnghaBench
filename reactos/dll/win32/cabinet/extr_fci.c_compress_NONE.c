
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cab_UWORD ;
struct TYPE_3__ {int cdata_in; int data_in; int data_out; } ;
typedef TYPE_1__ FCI_Int ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static cab_UWORD compress_NONE( FCI_Int *fci )
{
    memcpy( fci->data_out, fci->data_in, fci->cdata_in );
    return fci->cdata_in;
}
