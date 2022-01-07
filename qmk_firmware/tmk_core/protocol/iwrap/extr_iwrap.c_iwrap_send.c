
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmit (int ) ;

void iwrap_send(const char *s) {
    while (*s) xmit(*s++);
}
