
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CharGetDatum (int ) ;
 int SCHAR_MIN ;

__attribute__((used)) static Datum
leftmostvalue_char(void)
{
 return CharGetDatum(SCHAR_MIN);
}
