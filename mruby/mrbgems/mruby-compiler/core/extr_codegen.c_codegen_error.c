
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lineno; int jmp; scalar_t__ filename_sym; int mrb; int mpool; int lines; int iseq; struct TYPE_3__* prev; } ;
typedef TYPE_1__ codegen_scope ;


 int MRB_THROW (int *) ;
 int fprintf (int ,char*,char const*,...) ;
 int mrb_free (int ,int ) ;
 int mrb_pool_close (int ) ;
 char* mrb_sym_name_len (int ,scalar_t__,int *) ;
 int stderr ;

__attribute__((used)) static void
codegen_error(codegen_scope *s, const char *message)
{
  if (!s) return;
  while (s->prev) {
    codegen_scope *tmp = s->prev;
    mrb_free(s->mrb, s->iseq);
    mrb_free(s->mrb, s->lines);
    mrb_pool_close(s->mpool);
    s = tmp;
  }

  if (s->filename_sym && s->lineno) {
    const char *filename = mrb_sym_name_len(s->mrb, s->filename_sym, ((void*)0));
    fprintf(stderr, "codegen error:%s:%d: %s\n", filename, s->lineno, message);
  }
  else {
    fprintf(stderr, "codegen error: %s\n", message);
  }

  MRB_THROW(&s->jmp);
}
