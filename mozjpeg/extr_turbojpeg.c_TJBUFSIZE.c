
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAD (int,int) ;
 int _throwg (char*) ;

unsigned long TJBUFSIZE(int width, int height)
{
 unsigned long retval=0;

 if(width<1 || height<1)
    _throwg("TJBUFSIZE(): Invalid argument");




 retval=PAD(width, 16) * PAD(height, 16) * 6 + 2048;

 bailout:
 return retval;
}
