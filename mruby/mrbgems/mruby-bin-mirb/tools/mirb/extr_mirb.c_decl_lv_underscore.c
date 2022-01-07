
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_parser_state {int dummy; } ;
struct RProc {int dummy; } ;
typedef int mrbc_context ;
typedef int mrb_state ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fputs (char*,int ) ;
 int mrb_close (int *) ;
 struct RProc* mrb_generate_code (int *,struct mrb_parser_state*) ;
 struct mrb_parser_state* mrb_parse_string (int *,char*,int *) ;
 int mrb_parser_free (struct mrb_parser_state*) ;
 int mrb_top_self (int *) ;
 int mrb_vm_run (int *,struct RProc*,int ,int ) ;
 int stderr ;

void decl_lv_underscore(mrb_state *mrb, mrbc_context *cxt)
{
  struct RProc *proc;
  struct mrb_parser_state *parser;

  parser = mrb_parse_string(mrb, "_=nil", cxt);
  if (parser == ((void*)0)) {
    fputs("create parser state error\n", stderr);
    mrb_close(mrb);
    exit(EXIT_FAILURE);
  }

  proc = mrb_generate_code(mrb, parser);
  mrb_vm_run(mrb, proc, mrb_top_self(mrb), 0);

  mrb_parser_free(parser);
}
