
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int block_redo ;

void
stop_redo_ins()
{
    block_redo = FALSE;
}
