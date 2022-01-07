
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrbc_args {scalar_t__ idx; scalar_t__ argc; char** argv; char* prog; } ;
struct mrb_parser_state {int * f; TYPE_1__* cxt; } ;
struct TYPE_2__ {scalar_t__ partial_data; } ;
typedef TYPE_1__ mrbc_context ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char const*) ;
 int mrb_parser_set_filename (struct mrb_parser_state*,char const*) ;
 int stderr ;

__attribute__((used)) static int
partial_hook(struct mrb_parser_state *p)
{
  mrbc_context *c = p->cxt;
  struct mrbc_args *args = (struct mrbc_args *)c->partial_data;
  const char *fn;

  if (p->f) fclose(p->f);
  if (args->idx >= args->argc) {
    p->f = ((void*)0);
    return -1;
  }
  fn = args->argv[args->idx++];
  p->f = fopen(fn, "r");
  if (p->f == ((void*)0)) {
    fprintf(stderr, "%s: cannot open program file. (%s)\n", args->prog, fn);
    return -1;
  }
  mrb_parser_set_filename(p, fn);
  return 0;
}
