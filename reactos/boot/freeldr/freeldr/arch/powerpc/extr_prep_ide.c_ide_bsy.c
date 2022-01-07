
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; } ;
typedef TYPE_1__ idectl_desc ;


 int GetPhysByte (scalar_t__) ;
 int printf (char*) ;
 int sync () ;

void ide_bsy( void *extension ) {
    idectl_desc *desc = (idectl_desc *)extension;
    while( GetPhysByte(desc->port+7) & 0x80 )
    {
    printf("Waiting for not busy\n");
    sync();
    }
}
