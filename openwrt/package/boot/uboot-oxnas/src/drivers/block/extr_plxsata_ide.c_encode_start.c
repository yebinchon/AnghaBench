
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DMA_CTRL_STATUS_PAUSE ;

__attribute__((used)) static u32 encode_start(u32 ctrl_status)
{
 return ctrl_status & ~DMA_CTRL_STATUS_PAUSE;
}
