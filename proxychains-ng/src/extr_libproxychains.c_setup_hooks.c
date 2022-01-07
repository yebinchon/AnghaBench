
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SETUP_SYM (int ) ;
 int __xnet_connect ;
 int close ;
 int connect ;
 int freeaddrinfo ;
 int getaddrinfo ;
 int gethostbyaddr ;
 int gethostbyname ;
 int getnameinfo ;
 int sendto ;

__attribute__((used)) static void setup_hooks(void) {
 SETUP_SYM(connect);
 SETUP_SYM(sendto);
 SETUP_SYM(gethostbyname);
 SETUP_SYM(getaddrinfo);
 SETUP_SYM(freeaddrinfo);
 SETUP_SYM(gethostbyaddr);
 SETUP_SYM(getnameinfo);
 SETUP_SYM(close);



}
