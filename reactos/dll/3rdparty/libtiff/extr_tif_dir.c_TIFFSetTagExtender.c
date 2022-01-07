
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFExtendProc ;


 int _TIFFextender ;

TIFFExtendProc
TIFFSetTagExtender(TIFFExtendProc extender)
{
 TIFFExtendProc prev = _TIFFextender;
 _TIFFextender = extender;
 return (prev);
}
