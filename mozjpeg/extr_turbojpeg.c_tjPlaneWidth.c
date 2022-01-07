
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAD (int,int) ;
 int TJSAMP_GRAY ;
 int TJ_NUMSAMP ;
 int _throwg (char*) ;
 int* tjMCUWidth ;

int tjPlaneWidth(int componentID, int width, int subsamp)
{
 int pw, nc, retval=0;

 if(width<1 || subsamp<0 || subsamp>=TJ_NUMSAMP)
    _throwg("tjPlaneWidth(): Invalid argument");
 nc=(subsamp==TJSAMP_GRAY? 1:3);
 if(componentID<0 || componentID>=nc)
    _throwg("tjPlaneWidth(): Invalid argument");

 pw=PAD(width, tjMCUWidth[subsamp]/8);
 if(componentID==0)
  retval=pw;
 else
  retval=pw*8/tjMCUWidth[subsamp];

 bailout:
 return retval;
}
