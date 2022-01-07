
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_info {scalar_t__ file; } ;


 int CloseHandle (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct mapping_info*) ;
 int unmap_file_from_memory (struct mapping_info*) ;

__attribute__((used)) static void destroy_mapping( struct mapping_info *mi )
{
    if (!mi)
        return;
    unmap_file_from_memory( mi );
    if (mi->file)
        CloseHandle( mi->file );
    HeapFree( GetProcessHeap(), 0, mi );
}
