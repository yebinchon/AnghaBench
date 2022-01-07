
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_length; char* h_name; int h_addrtype; int * h_addr_list; int h_aliases; } ;


 int pc_stringfromipv4 (int ,char*) ;
 int printf (char*,int ,int,char*,int *,int,char*) ;

void printhostent(struct hostent *hp) {
 char ipbuf[16];
 pc_stringfromipv4(hp->h_addr_list[0], ipbuf);
 printf("alias: %p, len: %d, name: %s, addrlist: %p, addrtype: %d, ip: %s\n",
  hp->h_aliases,
  hp->h_length,
  hp->h_name,
  hp->h_addr_list,
  hp->h_addrtype,
  ipbuf
 );
}
