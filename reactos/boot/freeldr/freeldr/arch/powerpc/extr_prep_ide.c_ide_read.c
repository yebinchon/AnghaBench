
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytespersec; int seek_sector; int seek_cylinder; int seek_head; int seekto; scalar_t__ port; } ;
typedef TYPE_1__ idectl_desc ;


 short GetPhysHalf (scalar_t__) ;
 int SetPhysByte (scalar_t__,int) ;
 int ide_bsy (void*) ;
 int ide_seek (void*,int,int) ;

int ide_read( void *extension, char *buffer, int bytes ) {
    idectl_desc *desc = (idectl_desc *)extension;
    short *databuf = (short *)buffer;
    int inwords;

    ide_bsy( extension );
    SetPhysByte(desc->port+2, bytes / desc->bytespersec);
    SetPhysByte(desc->port+3, desc->seek_sector + 1);
    SetPhysByte(desc->port+4, desc->seek_cylinder);
    SetPhysByte(desc->port+5, desc->seek_cylinder >> 8);
    SetPhysByte(desc->port+6, desc->seek_head | 0xa0);
    SetPhysByte(desc->port+7, 0x20);

    for( inwords = 0; inwords < desc->bytespersec / sizeof(short); inwords++ ) {
    databuf[inwords] = GetPhysHalf(desc->port);
    }

    desc->seekto += desc->bytespersec;
    ide_seek( extension, desc->seekto, desc->seekto >> 32 );

    return bytes - (bytes % desc->bytespersec);
}
