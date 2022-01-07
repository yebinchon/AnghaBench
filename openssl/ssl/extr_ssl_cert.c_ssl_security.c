
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cert; } ;
struct TYPE_5__ {int (* sec_cb ) (TYPE_2__ const*,int *,int,int,int,void*,int ) ;int sec_ex; } ;
typedef TYPE_2__ SSL ;


 int stub1 (TYPE_2__ const*,int *,int,int,int,void*,int ) ;

int ssl_security(const SSL *s, int op, int bits, int nid, void *other)
{
    return s->cert->sec_cb(s, ((void*)0), op, bits, nid, other, s->cert->sec_ex);
}
