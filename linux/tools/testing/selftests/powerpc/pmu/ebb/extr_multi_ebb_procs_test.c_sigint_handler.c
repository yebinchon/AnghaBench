
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_should_exit ;

__attribute__((used)) static void sigint_handler(int signal)
{
 child_should_exit = 1;
}
