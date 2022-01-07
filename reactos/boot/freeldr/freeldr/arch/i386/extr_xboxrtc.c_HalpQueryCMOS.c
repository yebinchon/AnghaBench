
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;
 int WRITE_PORT_UCHAR (int ,int) ;

__attribute__((used)) static UCHAR
HalpQueryCMOS(UCHAR Reg)
{
  UCHAR Val;
  Reg |= 0x80;

  WRITE_PORT_UCHAR((PUCHAR)0x70, Reg);
  Val = READ_PORT_UCHAR((PUCHAR)0x71);
  WRITE_PORT_UCHAR((PUCHAR)0x70, 0);

  return(Val);
}
