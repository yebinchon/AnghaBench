
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_6__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; } ;
struct TYPE_5__ {int ncolours; TYPE_2__* colours; } ;
typedef int STREAM ;
typedef int RD_HCOLOURMAP ;
typedef TYPE_1__ COLOURMAP ;
typedef TYPE_2__ COLOURENTRY ;


 int DEBUG (char*) ;
 int in_uint16_le (int ,int) ;
 int in_uint8 (int ,scalar_t__) ;
 int in_uint8s (int ,int) ;
 int ui_create_colourmap (TYPE_1__*) ;
 int ui_set_colourmap (int ) ;
 int xfree (TYPE_2__*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
process_colcache(STREAM s)
{
 COLOURENTRY *entry;
 COLOURMAP map;
 RD_HCOLOURMAP hmap;
 uint8 cache_id;
 int i;

 in_uint8(s, cache_id);
 in_uint16_le(s, map.ncolours);

 map.colours = (COLOURENTRY *) xmalloc(sizeof(COLOURENTRY) * map.ncolours);

 for (i = 0; i < map.ncolours; i++)
 {
  entry = &map.colours[i];
  in_uint8(s, entry->blue);
  in_uint8(s, entry->green);
  in_uint8(s, entry->red);
  in_uint8s(s, 1);
 }

 DEBUG(("COLCACHE(id=%d,n=%d)\n", cache_id, map.ncolours));

 hmap = ui_create_colourmap(&map);

 if (cache_id)
  ui_set_colourmap(hmap);

 xfree(map.colours);
}
