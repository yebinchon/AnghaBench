
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int tcp_cork; int ofd; int id; } ;


 int IPPROTO_TCP ;
 int TCP_CORK ;
 int error (char*,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int web_client_uncrock_socket(struct web_client *w) {
    (void)w;


    return 0;
}
