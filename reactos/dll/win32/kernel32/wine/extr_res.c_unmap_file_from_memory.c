
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping_info {int * base; } ;
typedef int BOOL ;


 int TRUE ;
 int UnmapViewOfFile (int *) ;

__attribute__((used)) static BOOL unmap_file_from_memory( struct mapping_info *mi )
{
    if (mi->base)
        UnmapViewOfFile( mi->base );
    mi->base = ((void*)0);
    return TRUE;
}
