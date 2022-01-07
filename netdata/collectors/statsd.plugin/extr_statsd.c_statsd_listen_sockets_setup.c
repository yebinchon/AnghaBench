
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sockets; } ;


 int listen_sockets_setup (int *) ;
 TYPE_1__ statsd ;

__attribute__((used)) static int statsd_listen_sockets_setup(void) {
    return listen_sockets_setup(&statsd.sockets);
}
