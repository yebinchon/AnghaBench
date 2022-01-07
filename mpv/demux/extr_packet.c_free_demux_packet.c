
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {int dummy; } ;


 int talloc_free (struct demux_packet*) ;

void free_demux_packet(struct demux_packet *dp)
{
    talloc_free(dp);
}
