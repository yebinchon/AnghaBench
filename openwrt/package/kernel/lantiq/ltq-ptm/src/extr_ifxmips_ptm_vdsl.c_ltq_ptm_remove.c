
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int **) ;
 int PPE_MAILBOX_IGU1_INT ;
 int clear_priv_data () ;
 int clear_tables () ;
 int free_irq (int ,int *) ;
 int free_netdev (int *) ;
 int ** g_net_dev ;
 int g_ptm_priv_data ;
 int * ifx_mei_atm_showtime_enter ;
 int * ifx_mei_atm_showtime_exit ;
 int ifx_pp32_stop (int ) ;
 int ifx_ptm_uninit_chip () ;
 int unregister_netdev (int *) ;

__attribute__((used)) static int ltq_ptm_remove(struct platform_device *pdev)
{
    int i;
 ifx_mei_atm_showtime_enter = ((void*)0);
 ifx_mei_atm_showtime_exit = ((void*)0);


    ifx_pp32_stop(0);

    free_irq(PPE_MAILBOX_IGU1_INT, &g_ptm_priv_data);

    for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ )
        unregister_netdev(g_net_dev[i]);

    for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ ) {
        free_netdev(g_net_dev[i]);
        g_net_dev[i] = ((void*)0);
    }

    clear_tables();

    ifx_ptm_uninit_chip();

    clear_priv_data();

    return 0;
}
