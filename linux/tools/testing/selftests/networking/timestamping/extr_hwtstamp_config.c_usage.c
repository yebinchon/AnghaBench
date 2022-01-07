
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_RX_FILTERS ;
 int N_TX_TYPES ;
 int fputs (char*,int ) ;
 int list_names (int ,int ,int ) ;
 int rx_filters ;
 int stderr ;
 int tx_types ;

__attribute__((used)) static void usage(void)
{
 fputs("Usage: hwtstamp_config if_name [tx_type rx_filter]\n"
       "tx_type is any of (case-insensitive):\n",
       stderr);
 list_names(stderr, tx_types, N_TX_TYPES);
 fputs("rx_filter is any of (case-insensitive):\n", stderr);
 list_names(stderr, rx_filters, N_RX_FILTERS);
}
