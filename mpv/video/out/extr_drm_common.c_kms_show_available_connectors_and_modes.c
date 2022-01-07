
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int kms_show_connector_modes_callback ;
 int kms_show_foreach_connector (struct mp_log*,int,int ) ;

__attribute__((used)) static void kms_show_available_connectors_and_modes(struct mp_log *log, int card_no)
{
    kms_show_foreach_connector(log, card_no, kms_show_connector_modes_callback);
}
