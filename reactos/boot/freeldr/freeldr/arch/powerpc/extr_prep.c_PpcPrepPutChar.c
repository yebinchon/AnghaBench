
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetPhysByte (int ,int) ;
 int prep_serial ;
 int sync () ;

void PpcPrepPutChar( int ch ) {
    if( ch == 0x0a ) {
    SetPhysByte(prep_serial, 0x0d);
    sync();
    }
    SetPhysByte(prep_serial, ch);
    sync();
}
