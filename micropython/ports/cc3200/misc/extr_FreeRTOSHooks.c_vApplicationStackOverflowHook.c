
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiTaskHandle ;


 int __fatal_error (char*) ;

void vApplicationStackOverflowHook (OsiTaskHandle *pxTask, signed char *pcTaskName)
{





    __fatal_error("Stack overflow!");
}
