
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int soak_done ;

__attribute__((used)) static void sigalrm_handler(int unused)
{
 soak_done = 1;
}
