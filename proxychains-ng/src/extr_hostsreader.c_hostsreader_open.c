
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostsreader {int f; } ;


 int fopen (char*,char*) ;

int hostsreader_open(struct hostsreader *ctx) {
 if(!(ctx->f = fopen("/etc/hosts", "r"))) return 0;
 return 1;
}
