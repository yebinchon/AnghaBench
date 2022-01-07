
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* clk_get_ppe () ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;

unsigned long cgu_get_pp32_clock(void)
{
 struct clk *c = clk_get_ppe();
 unsigned long rate = clk_get_rate(c);
 clk_put(c);
 return rate;
}
