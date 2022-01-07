
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int write (int ,char*,int) ;

int fpm_stdio_flush_child()
{
 return write(STDERR_FILENO, "\0", 1);
}
