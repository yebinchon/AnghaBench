
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* mrb_value ;
typedef TYPE_1__* mrb_sym ;
typedef int mrb_state ;
struct TYPE_11__ {int ilen; int plen; int slen; int rlen; int nlocals; int nregs; int debug_info; struct TYPE_11__** reps; struct TYPE_11__** syms; struct TYPE_11__** pool; int * iseq; scalar_t__ flags; } ;
typedef TYPE_1__ mrb_irep ;
typedef int mrb_code ;
struct TYPE_12__ {int nlocals; int pc; int mpool; int ai; int nregs; int lines; int * mrb; int debug_start_pos; TYPE_1__* irep; int filename_index; int parser; scalar_t__ filename_sym; TYPE_1__** iseq; } ;
typedef TYPE_4__ codegen_scope ;


 int codegen_error (TYPE_4__*,char*) ;
 scalar_t__ codegen_realloc (TYPE_4__*,TYPE_1__**,int) ;
 int mrb_debug_info_append_file (int *,int ,char const*,int ,int ,int) ;
 int mrb_free (int *,int ) ;
 int mrb_gc_arena_restore (int *,int ) ;
 TYPE_1__* mrb_parser_get_filename (int ,int ) ;
 int mrb_pool_close (int ) ;
 char* mrb_sym_name_len (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void
scope_finish(codegen_scope *s)
{
  mrb_state *mrb = s->mrb;
  mrb_irep *irep = s->irep;

  if (s->nlocals >= 0x3ff) {
    codegen_error(s, "too many local variables");
  }
  irep->flags = 0;
  if (s->iseq) {
    irep->iseq = (mrb_code *)codegen_realloc(s, s->iseq, sizeof(mrb_code)*s->pc);
    irep->ilen = s->pc;
  }
  irep->pool = (mrb_value*)codegen_realloc(s, irep->pool, sizeof(mrb_value)*irep->plen);
  irep->syms = (mrb_sym*)codegen_realloc(s, irep->syms, sizeof(mrb_sym)*irep->slen);
  irep->reps = (mrb_irep**)codegen_realloc(s, irep->reps, sizeof(mrb_irep*)*irep->rlen);
  if (s->filename_sym) {
    mrb_sym fname = mrb_parser_get_filename(s->parser, s->filename_index);
    const char *filename = mrb_sym_name_len(s->mrb, fname, ((void*)0));

    mrb_debug_info_append_file(s->mrb, s->irep->debug_info,
                               filename, s->lines, s->debug_start_pos, s->pc);
  }
  mrb_free(s->mrb, s->lines);

  irep->nlocals = s->nlocals;
  irep->nregs = s->nregs;

  mrb_gc_arena_restore(mrb, s->ai);
  mrb_pool_close(s->mpool);
}
