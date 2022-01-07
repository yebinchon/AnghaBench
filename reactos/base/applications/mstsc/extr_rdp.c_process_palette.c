
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int blue; int green; int red; } ;
struct TYPE_5__ {int ncolours; TYPE_2__* colours; } ;
typedef int STREAM ;
typedef int RD_HCOLOURMAP ;
typedef TYPE_1__ COLOURMAP ;
typedef TYPE_2__ COLOURENTRY ;


 int DEBUG (char*) ;
 int in_uint16_le (int ,int) ;
 int in_uint8 (int ,int ) ;
 int in_uint8s (int ,int) ;
 int ui_create_colourmap (TYPE_1__*) ;
 int ui_set_colourmap (int ) ;
 int xfree (TYPE_2__*) ;
 scalar_t__ xmalloc (int) ;

void
process_palette(STREAM s)
{
 COLOURENTRY *entry;
 COLOURMAP map;
 RD_HCOLOURMAP hmap;
 int i;

 in_uint8s(s, 2);
 in_uint16_le(s, map.ncolours);
 in_uint8s(s, 2);

 map.colours = (COLOURENTRY *) xmalloc(sizeof(COLOURENTRY) * map.ncolours);

 DEBUG(("PALETTE(c=%d)\n", map.ncolours));

 for (i = 0; i < map.ncolours; i++)
 {
  entry = &map.colours[i];
  in_uint8(s, entry->red);
  in_uint8(s, entry->green);
  in_uint8(s, entry->blue);
 }

 hmap = ui_create_colourmap(&map);
 ui_set_colourmap(hmap);

 xfree(map.colours);
}
