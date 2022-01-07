
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath79_ddr_wb_flush (int ) ;

__attribute__((used)) static void ath79_ddr_flush_ge0(void)
{
 ath79_ddr_wb_flush(0);
}
