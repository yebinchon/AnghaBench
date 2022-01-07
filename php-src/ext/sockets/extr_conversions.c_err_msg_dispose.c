
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct err_s {int * msg; scalar_t__ should_free; int level; } ;


 int efree (int *) ;
 int php_error_docref (int *,int ,char*,int *) ;

void err_msg_dispose(struct err_s *err)
{
 if (err->msg != ((void*)0)) {
  php_error_docref(((void*)0), err->level, "%s", err->msg);
  if (err->should_free) {
   efree(err->msg);
  }
 }
}
