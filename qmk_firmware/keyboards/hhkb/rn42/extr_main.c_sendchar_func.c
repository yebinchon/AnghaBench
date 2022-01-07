
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;


 int sendchar (int ) ;
 int xmit (int ) ;

__attribute__((used)) static int8_t sendchar_func(uint8_t c)
{
    xmit(c);
    sendchar(c);
    return 0;
}
