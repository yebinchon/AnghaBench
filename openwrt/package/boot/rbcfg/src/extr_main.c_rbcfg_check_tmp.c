
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;
struct rbcfg_ctx {scalar_t__ buflen; int tmp_file; } ;


 int S_IFREG ;
 int stat (int ,struct stat*) ;

__attribute__((used)) static int
rbcfg_check_tmp(struct rbcfg_ctx *ctx)
{
 struct stat s;
 int err;

 err = stat(ctx->tmp_file, &s);
 if (err < 0)
  return 0;

 if ((s.st_mode & S_IFREG) == 0)
  return 0;

 if (s.st_size != ctx->buflen)
  return 0;

 return 1;
}
