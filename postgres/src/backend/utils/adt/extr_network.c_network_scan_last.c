
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Int32GetDatum (int) ;
 int inet_set_masklen ;
 int network_broadcast ;

Datum
network_scan_last(Datum in)
{
 return DirectFunctionCall2(inet_set_masklen,
          DirectFunctionCall1(network_broadcast, in),
          Int32GetDatum(-1));
}
