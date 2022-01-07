
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int kms_show_available_connectors ;
 int kms_show_foreach_card (struct mp_log*,int ) ;

__attribute__((used)) static void kms_show_available_cards_and_connectors(struct mp_log *log)
{
    kms_show_foreach_card(log, kms_show_available_connectors);
}
