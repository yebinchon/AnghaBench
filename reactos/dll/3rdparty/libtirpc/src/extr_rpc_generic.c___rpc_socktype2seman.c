
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NC_TPI_CLTS ;
 int NC_TPI_COTS_ORD ;
 int NC_TPI_RAW ;




int
__rpc_socktype2seman(int socktype)
{
 switch (socktype) {
 case 130:
  return NC_TPI_CLTS;
 case 128:
  return NC_TPI_COTS_ORD;
 case 129:
  return NC_TPI_RAW;
 default:
  break;
 }

 return -1;
}
