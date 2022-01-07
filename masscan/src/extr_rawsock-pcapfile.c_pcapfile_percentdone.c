
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct PcapFile {int bytes_read; int file_size; int * fp; } ;



unsigned pcapfile_percentdone(struct PcapFile *capfile, uint64_t *r_bytes_read)
{
    if (r_bytes_read)
        *r_bytes_read = capfile->bytes_read;

    if (capfile->fp == ((void*)0))
        return 100;
    return (unsigned)(capfile->bytes_read*100/capfile->file_size);
}
