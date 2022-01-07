
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long seek_sector; long long sectors; long long seek_head; long long heads; long long seek_cylinder; long long seekto; } ;
typedef TYPE_1__ idectl_desc ;



void ide_seek( void *extension, int low, int high ) {
    idectl_desc *desc = (idectl_desc *)extension;
    long long seekto = ((((long long)high) << 32) | (low & 0xffffffff));

    desc->seek_sector = seekto % desc->sectors;
    seekto /= desc->sectors;
    desc->seek_head = seekto % desc->heads;
    seekto /= desc->heads;
    desc->seek_cylinder = seekto;
    desc->seekto = seekto;
}
