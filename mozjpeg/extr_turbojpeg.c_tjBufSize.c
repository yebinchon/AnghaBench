
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMSUBOPT ;
 int PAD (int,int) ;
 int TJSAMP_GRAY ;
 int _throwg (char*) ;
 int* tjMCUHeight ;
 int* tjMCUWidth ;

unsigned long tjBufSize(int width, int height, int jpegSubsamp)
{
  unsigned long retval = 0;
  int mcuw, mcuh, chromasf;

 if(width<1 || height<1 || jpegSubsamp<0 || jpegSubsamp>=NUMSUBOPT)
    _throwg("tjBufSize(): Invalid argument");




 mcuw=tjMCUWidth[jpegSubsamp];
 mcuh=tjMCUHeight[jpegSubsamp];
 chromasf=jpegSubsamp==TJSAMP_GRAY? 0: 4*64/(mcuw*mcuh);
 retval=PAD(width, mcuw) * PAD(height, mcuh) * (2 + chromasf) + 2048;

 bailout:
 return retval;
}
