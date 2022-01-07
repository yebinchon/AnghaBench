
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ticklen; } ;
struct TYPE_5__ {scalar_t__ session_id_length; TYPE_1__ ext; int not_resumable; } ;
typedef TYPE_2__ SSL_SESSION ;



int SSL_SESSION_is_resumable(const SSL_SESSION *s)
{




    return !s->not_resumable
           && (s->session_id_length > 0 || s->ext.ticklen > 0);
}
