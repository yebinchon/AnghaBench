
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; } ;
typedef TYPE_1__ RConfigHoldChar ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_config_hold_char_free(RConfigHoldChar *hc) {
 free (hc->value);
 free (hc);
}
