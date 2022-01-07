
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef TYPE_1__ SSL ;


 int RECORD_LAYER_set_read_ahead (int *,int) ;

void SSL_set_read_ahead(SSL *s, int yes)
{
    RECORD_LAYER_set_read_ahead(&s->rlayer, yes);
}
