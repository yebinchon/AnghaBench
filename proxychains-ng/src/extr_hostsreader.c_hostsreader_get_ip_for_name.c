
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostsreader {char* ip; int name; } ;


 int hostsreader_close (struct hostsreader*) ;
 scalar_t__ hostsreader_get (struct hostsreader*,char*,size_t) ;
 int hostsreader_open (struct hostsreader*) ;
 int strcmp (int ,char const*) ;

char* hostsreader_get_ip_for_name(const char* name, char* buf, size_t bufsize) {
 struct hostsreader ctx;
 char *res = 0;
 if(!hostsreader_open(&ctx)) return 0;
 while(hostsreader_get(&ctx, buf, bufsize)) {
  if(!strcmp(ctx.name, name)) {
   res = ctx.ip;
   break;
  }
 }
 hostsreader_close(&ctx);
 return res;
}
