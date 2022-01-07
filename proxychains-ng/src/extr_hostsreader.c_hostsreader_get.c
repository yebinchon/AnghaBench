
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostsreader {char* ip; char* name; int f; } ;


 int fgets (char*,size_t,int ) ;
 scalar_t__ isnumericipv4 (char*) ;
 scalar_t__ isspace (char) ;

int hostsreader_get(struct hostsreader *ctx, char* buf, size_t bufsize) {
 while(1) {
  if(!fgets(buf, bufsize, ctx->f)) return 0;
  if(*buf == '#') continue;
  char *p = buf;
  size_t l = bufsize;
  ctx->ip = p;
  while(*p && !isspace(*p) && l) {
   p++;
   l--;
  }
  if(!l || !*p || p == ctx->ip) continue;
  *p = 0;
  p++;
  while(*p && isspace(*p) && l) {
   p++;
   l--;
  }
  if(!l || !*p) continue;
  ctx->name = p;
  while(*p && !isspace(*p) && l) {
   p++;
   l--;
  }
  if(!l || !*p) continue;
  *p = 0;
  if(isnumericipv4(ctx->ip)) return 1;
 }
}
