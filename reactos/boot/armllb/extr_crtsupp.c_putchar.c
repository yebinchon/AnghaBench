
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LlbSerialPutChar (int) ;
 int LlbVideoPutChar (int) ;

int
putchar(int c)
{

    LlbVideoPutChar(c);


    LlbSerialPutChar(c);
    return 0;
}
