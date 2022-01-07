
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ of_proxy ;


 int CacheSizeLimit ;
 int PpcDefaultMachVtbl () ;
 int PpcOfwInit () ;
 int PpcPrepInit () ;
 scalar_t__ ofproxy ;

void PpcInit( of_proxy the_ofproxy ) {

    CacheSizeLimit = 64 * 1024;
    ofproxy = the_ofproxy;
    PpcDefaultMachVtbl();
    if(ofproxy) PpcOfwInit();
    else PpcPrepInit();
}
