
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {unsigned long total; unsigned long bytes; int count; } ;



__attribute__((used)) static void update_stats(struct stats * const ustats,
    unsigned long measurement, unsigned long bytes)
{
 ustats->total += measurement;
 ustats->bytes += bytes;
 ustats->count++;
}
