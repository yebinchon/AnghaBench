
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUT_STR_NF (char*) ;

void
win_resize_off()
{
    OUT_STR_NF("\033[12}");
}
