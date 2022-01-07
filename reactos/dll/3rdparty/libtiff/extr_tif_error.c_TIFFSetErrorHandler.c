
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFErrorHandler ;


 int _TIFFerrorHandler ;

TIFFErrorHandler
TIFFSetErrorHandler(TIFFErrorHandler handler)
{
 TIFFErrorHandler prev = _TIFFerrorHandler;
 _TIFFerrorHandler = handler;
 return (prev);
}
