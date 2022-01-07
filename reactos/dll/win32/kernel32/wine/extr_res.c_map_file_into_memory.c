
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_info {int * base; int size; int file; scalar_t__ read_write; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateFileMappingW (int ,int *,int,int ,int ,int *) ;
 int FALSE ;
 int FILE_MAP_READ ;
 int FILE_MAP_WRITE ;
 int * MapViewOfFile (int ,int,int ,int ,int ) ;
 int PAGE_READONLY ;
 int PAGE_READWRITE ;

__attribute__((used)) static BOOL map_file_into_memory( struct mapping_info *mi )
{
    DWORD page_attr, perm;
    HANDLE mapping;

    if (mi->read_write)
    {
        page_attr = PAGE_READWRITE;
        perm = FILE_MAP_WRITE | FILE_MAP_READ;
    }
    else
    {
        page_attr = PAGE_READONLY;
        perm = FILE_MAP_READ;
    }

    mapping = CreateFileMappingW( mi->file, ((void*)0), page_attr, 0, 0, ((void*)0) );
    if (!mapping) return FALSE;

    mi->base = MapViewOfFile( mapping, perm, 0, 0, mi->size );
    CloseHandle( mapping );

    return mi->base != ((void*)0);
}
