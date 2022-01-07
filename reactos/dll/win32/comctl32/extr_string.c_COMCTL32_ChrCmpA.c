
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BOOL ;


 int COMCTL32_ChrCmpHelperA (int ,int ,int ) ;

__attribute__((used)) static BOOL COMCTL32_ChrCmpA(WORD ch1, WORD ch2)
{
  return COMCTL32_ChrCmpHelperA(ch1, ch2, 0);
}
