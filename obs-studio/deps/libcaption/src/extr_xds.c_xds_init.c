
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xds_t ;


 int memset (int *,int ,int) ;

void xds_init(xds_t* xds)
{
    memset(xds, 0, sizeof(xds_t));
}
