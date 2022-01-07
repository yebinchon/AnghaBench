
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFErrorHandlerExt ;


 int _TIFFwarningHandlerExt ;

TIFFErrorHandlerExt
TIFFSetWarningHandlerExt(TIFFErrorHandlerExt handler)
{
 TIFFErrorHandlerExt prev = _TIFFwarningHandlerExt;
 _TIFFwarningHandlerExt = handler;
 return (prev);
}
