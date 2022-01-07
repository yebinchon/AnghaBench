
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twitch_ingest {int * url; int * name; } ;
struct TYPE_2__ {size_t num; scalar_t__ array; } ;


 TYPE_1__ cur_ingests ;

struct twitch_ingest twitch_ingest(size_t idx)
{
 struct twitch_ingest ingest;

 if (cur_ingests.num <= idx) {
  ingest.name = ((void*)0);
  ingest.url = ((void*)0);
 } else {
  ingest = *(struct twitch_ingest *)(cur_ingests.array + idx);
 }

 return ingest;
}
