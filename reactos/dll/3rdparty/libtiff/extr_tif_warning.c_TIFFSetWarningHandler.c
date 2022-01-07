
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFErrorHandler ;


 int _TIFFwarningHandler ;

TIFFErrorHandler
TIFFSetWarningHandler(TIFFErrorHandler handler)
{
 TIFFErrorHandler prev = _TIFFwarningHandler;
 _TIFFwarningHandler = handler;
 return (prev);
}
