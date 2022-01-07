
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct PcapFile {int end_sec; int start_sec; } ;



void pcapfile_get_timestamps(struct PcapFile *capfile, time_t *start, time_t *end)
{
    *start = capfile->start_sec;
    *end = capfile->end_sec;
}
