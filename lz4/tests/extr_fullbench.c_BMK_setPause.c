
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_pause ;

__attribute__((used)) static void BMK_setPause(void)
{
    g_pause = 1;
}
