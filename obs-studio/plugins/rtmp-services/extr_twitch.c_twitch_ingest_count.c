
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; } ;


 TYPE_1__ cur_ingests ;

size_t twitch_ingest_count(void)
{
 return cur_ingests.num;
}
