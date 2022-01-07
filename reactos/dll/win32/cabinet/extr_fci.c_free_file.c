
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int entry; } ;
struct TYPE_3__ {int (* free ) (struct file*) ;} ;
typedef TYPE_1__ FCI_Int ;


 int list_remove (int *) ;
 int stub1 (struct file*) ;

__attribute__((used)) static void free_file( FCI_Int *fci, struct file *file )
{
    list_remove( &file->entry );
    fci->free( file );
}
