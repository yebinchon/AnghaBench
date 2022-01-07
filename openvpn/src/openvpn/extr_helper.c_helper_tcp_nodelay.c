
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int server_flags; scalar_t__ mode; int sockflags; int gc; } ;


 scalar_t__ MODE_SERVER ;
 int M_USAGE ;
 int SF_TCP_NODELAY ;
 int SF_TCP_NODELAY_HELPER ;
 int print_str (char*,int *) ;
 int push_option (struct options*,int ,int ) ;

void
helper_tcp_nodelay(struct options *o)
{
}
