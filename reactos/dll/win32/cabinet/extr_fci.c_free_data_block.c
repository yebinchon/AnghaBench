
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct data_block {int entry; } ;
struct TYPE_3__ {int (* free ) (struct data_block*) ;} ;
typedef TYPE_1__ FCI_Int ;


 int list_remove (int *) ;
 int stub1 (struct data_block*) ;

__attribute__((used)) static void free_data_block( FCI_Int *fci, struct data_block *block )
{
    list_remove( &block->entry );
    fci->free( block );
}
