
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* sin6_port; int sin6_addr; } ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {void* sin_port; TYPE_1__ sin_addr; } ;
union socket_address {TYPE_4__ sin6; TYPE_3__ sa; TYPE_2__ sin; } ;
typedef int buf ;
typedef int a6 ;
typedef int a4 ;


 int AF_INET ;
 int AF_INET6 ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (char*,char*) ;
 int MG_SOCK_STRINGIFY_IP ;
 int MG_SOCK_STRINGIFY_PORT ;
 void* htons (int) ;
 int inet_addr (char*) ;
 int inet_pton (int ,char*,int *) ;
 int memset (union socket_address*,int ,int) ;
 int mg_sock_addr_to_str (union socket_address*,char*,int,int) ;

__attribute__((used)) static const char *test_sock_addr_to_str(void) {
  char buf[60];
  buf[0] = '\0';
  {
    union socket_address a4;
    memset(&a4, 0, sizeof(a4));
    a4.sa.sa_family = AF_INET;
    a4.sin.sin_addr.s_addr = inet_addr("127.0.0.1");
    a4.sin.sin_port = htons(12345);
    mg_sock_addr_to_str(&a4, buf, sizeof(buf), 0);
    ASSERT_STREQ(buf, "");
    mg_sock_addr_to_str(&a4, buf, sizeof(buf), MG_SOCK_STRINGIFY_IP);
    ASSERT_STREQ(buf, "127.0.0.1");
    mg_sock_addr_to_str(&a4, buf, sizeof(buf), MG_SOCK_STRINGIFY_PORT);
    ASSERT_STREQ(buf, "12345");
    mg_sock_addr_to_str(&a4, buf, sizeof(buf),
                        MG_SOCK_STRINGIFY_IP | MG_SOCK_STRINGIFY_PORT);
    ASSERT_STREQ(buf, "127.0.0.1:12345");
  }
  return ((void*)0);
}
