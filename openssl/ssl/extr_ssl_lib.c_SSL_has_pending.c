
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ RECORD_LAYER_processed_read_pending (int *) ;
 int RECORD_LAYER_read_pending (int *) ;

int SSL_has_pending(const SSL *s)
{
    if (RECORD_LAYER_processed_read_pending(&s->rlayer))
        return 1;

    return RECORD_LAYER_read_pending(&s->rlayer);
}
