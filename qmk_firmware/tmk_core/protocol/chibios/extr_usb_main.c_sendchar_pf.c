
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sendchar (int ) ;

void sendchar_pf(void *p, char c) {
    (void)p;
    sendchar((uint8_t)c);
}
