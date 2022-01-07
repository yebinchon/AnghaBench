
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_FOR_INTERRUPTS () ;
 int ProcessClientReadInterrupt (int) ;
 int getc (int ) ;
 int stdin ;

__attribute__((used)) static int
interactive_getc(void)
{
 int c;







 CHECK_FOR_INTERRUPTS();

 c = getc(stdin);

 ProcessClientReadInterrupt(0);

 return c;
}
