
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct folder {int entry; int blocks_list; int files_list; int compression; scalar_t__ data_count; int data_start; TYPE_1__ data; } ;
struct TYPE_7__ {scalar_t__ cbReserveCFFolder; } ;
struct TYPE_8__ {int cFolders; TYPE_2__ ccab; int folders_size; int folders_list; int compression; int folders_data_size; struct folder* (* alloc ) (int) ;} ;
typedef TYPE_3__ FCI_Int ;
typedef int CFFOLDER ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int FCIERR_ALLOC_FAIL ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int set_error (TYPE_3__*,int ,int ) ;
 struct folder* stub1 (int) ;

__attribute__((used)) static struct folder *add_folder( FCI_Int *fci )
{
    struct folder *folder = fci->alloc( sizeof(*folder) );

    if (!folder)
    {
        set_error( fci, FCIERR_ALLOC_FAIL, ERROR_NOT_ENOUGH_MEMORY );
        return ((void*)0);
    }
    folder->data.handle = -1;
    folder->data_start = fci->folders_data_size;
    folder->data_count = 0;
    folder->compression = fci->compression;
    list_init( &folder->files_list );
    list_init( &folder->blocks_list );
    list_add_tail( &fci->folders_list, &folder->entry );
    fci->folders_size += sizeof(CFFOLDER) + fci->ccab.cbReserveCFFolder;
    fci->cFolders++;
    return folder;
}
