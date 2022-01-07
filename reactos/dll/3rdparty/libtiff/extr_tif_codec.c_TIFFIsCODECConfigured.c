
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {int * init; } ;
typedef TYPE_1__ TIFFCodec ;


 int * NotConfigured ;
 TYPE_1__* TIFFFindCODEC (int ) ;

int
TIFFIsCODECConfigured(uint16 scheme)
{
 const TIFFCodec* codec = TIFFFindCODEC(scheme);

 if(codec == ((void*)0)) {
  return 0;
 }
 if(codec->init == ((void*)0)) {
  return 0;
 }
 if(codec->init != NotConfigured){
  return 1;
 }
 return 0;
}
