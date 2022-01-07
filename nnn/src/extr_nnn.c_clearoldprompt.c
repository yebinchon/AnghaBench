
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clrtoeol () ;
 int tolastln () ;

__attribute__((used)) static inline void clearoldprompt(void)
{
 tolastln();
 clrtoeol();
}
