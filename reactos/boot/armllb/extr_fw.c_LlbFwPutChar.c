
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int INT ;


 int LlbSerialPutChar (int ) ;
 int LlbVideoPutChar (int ) ;

VOID
LlbFwPutChar(INT Ch)
{

    LlbVideoPutChar(Ch);


    LlbSerialPutChar(Ch);
}
