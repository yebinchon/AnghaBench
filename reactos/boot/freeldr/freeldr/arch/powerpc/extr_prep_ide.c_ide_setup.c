
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytespersec; short cylinders; short heads; short sectors; scalar_t__ port; } ;
typedef TYPE_1__ idectl_desc ;


 short GetPhysHalf (scalar_t__) ;
 short SWAP_W (short) ;
 int SetPhysByte (scalar_t__,int) ;
 int ide_bsy (void*) ;
 int ide_drq (void*) ;
 int ide_rdy (void*) ;
 int printf (char*,char*,short,short,short) ;
 int strncpy (char*,char*,int) ;
 int sync () ;

void ide_setup( void *extension ) {
    idectl_desc *desc = (idectl_desc *)extension;
    short identbuffer[256];
    char namebuf[41];
    short *databuf = (short *)identbuffer, in;
    int inwords;

    ide_rdy( extension );
    ide_bsy( extension );
    desc->bytespersec = 512;
    SetPhysByte(desc->port+2, 1);
    SetPhysByte(desc->port+3, 0);
    SetPhysByte(desc->port+4, 0);
    SetPhysByte(desc->port+5, 0);
    SetPhysByte(desc->port+6, 0);
    SetPhysByte(desc->port+7, 0xec);
    ide_drq( extension );

    for( inwords = 0; inwords < desc->bytespersec / sizeof(short); inwords++ ) {
    in = GetPhysHalf(desc->port);
    databuf[inwords] = SWAP_W(in);
    sync();
    }

    desc->cylinders = identbuffer[1];
    desc->heads = identbuffer[3];
    desc->sectors = identbuffer[6];



    strncpy(namebuf, (char *)(identbuffer+0x1b), 41);
    printf("HARD DISC MODEL: %s c,h,s %d,%d,%d\n",
       namebuf, desc->cylinders, desc->heads, desc->sectors);
}
