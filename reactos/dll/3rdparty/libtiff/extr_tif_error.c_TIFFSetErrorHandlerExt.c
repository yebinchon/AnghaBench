
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFErrorHandlerExt ;


 int _TIFFerrorHandlerExt ;

TIFFErrorHandlerExt
TIFFSetErrorHandlerExt(TIFFErrorHandlerExt handler)
{
 TIFFErrorHandlerExt prev = _TIFFerrorHandlerExt;
 _TIFFerrorHandlerExt = handler;
 return (prev);
}
