
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_info {scalar_t__ file; int size; scalar_t__ read_write; } ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFileW (int ,int,int ,int *,int ,int ,int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetFileSize (scalar_t__,int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct mapping_info* HeapAlloc (int ,int ,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int destroy_mapping (struct mapping_info*) ;
 scalar_t__ map_file_into_memory (struct mapping_info*) ;

__attribute__((used)) static struct mapping_info *create_mapping( LPCWSTR name, BOOL rw )
{
    struct mapping_info *mi;

    mi = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof *mi );
    if (!mi)
        return ((void*)0);

    mi->read_write = rw;

    mi->file = CreateFileW( name, GENERIC_READ | (rw ? GENERIC_WRITE : 0),
                            0, ((void*)0), OPEN_EXISTING, 0, 0 );

    if (mi->file != INVALID_HANDLE_VALUE)
    {
        mi->size = GetFileSize( mi->file, ((void*)0) );

        if (map_file_into_memory( mi ))
            return mi;
    }
    destroy_mapping( mi );
    return ((void*)0);
}
