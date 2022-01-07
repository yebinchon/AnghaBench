
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clear_share_buffer () ;
 int init_ema () ;
 int init_mailbox () ;
 int init_pmu () ;
 int reset_ppe (struct platform_device*) ;

void ar9_init(struct platform_device *pdev)
{
 init_pmu();
 reset_ppe(pdev);
 init_ema();
 init_mailbox();
 clear_share_buffer();
}
