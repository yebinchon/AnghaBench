
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* full_map; int full_count; int hMap; } ;
struct TYPE_4__ {TYPE_1__ pe; } ;
struct image_file_map {TYPE_2__ u; } ;
typedef int IMAGE_NT_HEADERS ;


 int FILE_MAP_READ ;
 void* IMAGE_NO_MAP ;
 void* MapViewOfFile (int ,int ,int ,int ,int ) ;
 int * RtlImageNtHeader (void*) ;

__attribute__((used)) static void* pe_map_full(struct image_file_map* fmap, IMAGE_NT_HEADERS** nth)
{
    if (!fmap->u.pe.full_map)
    {
        fmap->u.pe.full_map = MapViewOfFile(fmap->u.pe.hMap, FILE_MAP_READ, 0, 0, 0);
    }
    if (fmap->u.pe.full_map)
    {
        if (nth) *nth = RtlImageNtHeader(fmap->u.pe.full_map);
        fmap->u.pe.full_count++;
        return fmap->u.pe.full_map;
    }
    return IMAGE_NO_MAP;
}
