
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetPhysByte (int ) ;
 int PpcPrepConsKbHit () ;
 int prep_serial ;

int PpcPrepConsGetCh()
{
    while(!PpcPrepConsKbHit());
    return GetPhysByte(prep_serial);
}
