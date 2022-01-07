
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clear_share_buffer () ;
 int init_atm_tc () ;
 int init_ema () ;
 int init_mailbox () ;
 int init_pmu () ;
 int reset_ppe (struct platform_device*) ;

void ifx_ptm_init_chip(struct platform_device *pdev)
{
    init_pmu();

    reset_ppe(pdev);

    init_ema();

    init_mailbox();

    init_atm_tc();

    clear_share_buffer();
}
