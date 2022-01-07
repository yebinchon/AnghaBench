
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;


 int TLS1_FLAGS_RECEIVED_EXTMS ;

__attribute__((used)) static int init_ems(SSL *s, unsigned int context)
{
    s->s3.flags &= ~TLS1_FLAGS_RECEIVED_EXTMS;

    return 1;
}
