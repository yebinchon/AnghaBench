
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_mcp23017 () ;
 int left_scan () ;
 int print (char*) ;
 int wait_us (int) ;

void left_init(void)
{
    init_mcp23017();
    left_scan();







}
