
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ conn; int flags; } ;
struct web_client {int ofd; TYPE_1__ ssl; } ;
typedef int ssize_t ;


 int SSL_write (scalar_t__,void const*,size_t) ;
 scalar_t__ netdata_srv_ctx ;
 int send (int ,void const*,size_t,int) ;
 int web_client_check_unix (struct web_client*) ;

__attribute__((used)) static inline ssize_t web_client_send_data(struct web_client *w,const void *buf,size_t len, int flags)
{
    ssize_t bytes;
    bytes = send(w->ofd, buf, len, flags);


    return bytes;
}
