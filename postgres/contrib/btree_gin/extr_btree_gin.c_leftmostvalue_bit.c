
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int Int32GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 int bit_in ;

__attribute__((used)) static Datum
leftmostvalue_bit(void)
{
 return DirectFunctionCall3(bit_in,
          CStringGetDatum(""),
          ObjectIdGetDatum(0),
          Int32GetDatum(-1));
}
