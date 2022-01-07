
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int kms_show_connector_name_and_state_callback ;
 int kms_show_foreach_connector (struct mp_log*,int,int ) ;
 int mp_info (struct mp_log*,char*,...) ;

__attribute__((used)) static void kms_show_available_connectors(struct mp_log *log, int card_no)
{
    mp_info(log, "Available connectors for card %d:\n", card_no);
    kms_show_foreach_connector(
        log, card_no, kms_show_connector_name_and_state_callback);
    mp_info(log, "\n");
}
