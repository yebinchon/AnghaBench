
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_info {int size; int file; } ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int FILE_BEGIN ;
 int SetEndOfFile (int ) ;
 int SetFilePointer (int ,int ,int *,int ) ;
 int map_file_into_memory (struct mapping_info*) ;
 int unmap_file_from_memory (struct mapping_info*) ;

__attribute__((used)) static BOOL resize_mapping( struct mapping_info *mi, DWORD new_size )
{
    if (!unmap_file_from_memory( mi ))
        return FALSE;


    SetFilePointer( mi->file, new_size, ((void*)0), FILE_BEGIN );
    if (!SetEndOfFile( mi->file ))
    {
        ERR("failed to set file size to %08x\n", new_size );
        return FALSE;
    }

    mi->size = new_size;

    return map_file_into_memory( mi );
}
