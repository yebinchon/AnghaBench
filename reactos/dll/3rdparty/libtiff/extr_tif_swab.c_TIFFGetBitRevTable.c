
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* TIFFBitRevTable ;
 unsigned char const* TIFFNoBitRevTable ;

const unsigned char*
TIFFGetBitRevTable(int reversed)
{
 return (reversed ? TIFFBitRevTable : TIFFNoBitRevTable);
}
