
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint16_t ;
struct mrb_locals {scalar_t__ r; scalar_t__ name; } ;
struct TYPE_14__ {struct TYPE_14__* cdr; } ;
typedef TYPE_1__ node ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_pool ;
typedef int mrb_irep ;
typedef int mrb_code ;
struct TYPE_15__ {int ainfo; int rcapa; int icapa; int pcapa; int scapa; int sp; int nlocals; scalar_t__ rlev; int filename_index; int parser; TYPE_7__* irep; scalar_t__ filename_sym; scalar_t__ debug_start_pos; int lineno; int * lines; int ai; TYPE_1__* lv; int * iseq; scalar_t__ mscope; struct TYPE_15__* prev; int * mpool; int * mrb; int member_0; } ;
typedef TYPE_2__ codegen_scope ;
struct TYPE_16__ {int * debug_info; struct mrb_locals* lv; scalar_t__ slen; int * syms; scalar_t__ plen; int * pool; int * iseq; int ** reps; } ;


 int codegen_error (TYPE_2__*,char*) ;
 scalar_t__ lv_idx (TYPE_2__*,scalar_t__) ;
 scalar_t__ lv_name (TYPE_1__*) ;
 TYPE_7__* mrb_add_irep (int *) ;
 int mrb_assert (int) ;
 int mrb_debug_info_alloc (int *,TYPE_7__*) ;
 int mrb_gc_arena_save (int *) ;
 scalar_t__ mrb_malloc (int *,int) ;
 scalar_t__ mrb_pool_alloc (int *,int) ;
 int * mrb_pool_open (int *) ;
 scalar_t__ node_len (TYPE_1__*) ;
 int scope_add_irep (TYPE_2__*,TYPE_7__*) ;

__attribute__((used)) static codegen_scope*
scope_new(mrb_state *mrb, codegen_scope *prev, node *lv)
{
  static const codegen_scope codegen_scope_zero = { 0 };
  mrb_pool *pool = mrb_pool_open(mrb);
  codegen_scope *p = (codegen_scope *)mrb_pool_alloc(pool, sizeof(codegen_scope));

  if (!p) {
    if (prev)
      codegen_error(prev, "unexpected scope");
    return ((void*)0);
  }
  *p = codegen_scope_zero;
  p->mrb = mrb;
  p->mpool = pool;
  if (!prev) return p;
  p->prev = prev;
  p->ainfo = -1;
  p->mscope = 0;

  p->irep = mrb_add_irep(mrb);
  scope_add_irep(prev, p->irep);

  p->rcapa = 8;
  p->irep->reps = (mrb_irep**)mrb_malloc(mrb, sizeof(mrb_irep*)*p->rcapa);

  p->icapa = 1024;
  p->iseq = (mrb_code*)mrb_malloc(mrb, sizeof(mrb_code)*p->icapa);
  p->irep->iseq = ((void*)0);

  p->pcapa = 32;
  p->irep->pool = (mrb_value*)mrb_malloc(mrb, sizeof(mrb_value)*p->pcapa);
  p->irep->plen = 0;

  p->scapa = 256;
  p->irep->syms = (mrb_sym*)mrb_malloc(mrb, sizeof(mrb_sym)*p->scapa);
  p->irep->slen = 0;

  p->lv = lv;
  p->sp += node_len(lv)+1;
  p->nlocals = p->sp;
  if (lv) {
    node *n = lv;
    size_t i = 0;

    p->irep->lv = (struct mrb_locals*)mrb_malloc(mrb, sizeof(struct mrb_locals) * (p->nlocals - 1));
    for (i=0, n=lv; n; i++,n=n->cdr) {
      p->irep->lv[i].name = lv_name(n);
      if (lv_name(n)) {
        p->irep->lv[i].r = lv_idx(p, lv_name(n));
      }
      else {
        p->irep->lv[i].r = 0;
      }
    }
    mrb_assert(i + 1 == p->nlocals);
  }
  p->ai = mrb_gc_arena_save(mrb);

  p->filename_sym = prev->filename_sym;
  if (p->filename_sym) {
    p->lines = (uint16_t*)mrb_malloc(mrb, sizeof(short)*p->icapa);
  }
  p->lineno = prev->lineno;


  p->debug_start_pos = 0;
  if (p->filename_sym) {
    mrb_debug_info_alloc(mrb, p->irep);
  }
  else {
    p->irep->debug_info = ((void*)0);
  }
  p->parser = prev->parser;
  p->filename_index = prev->filename_index;

  p->rlev = prev->rlev+1;

  return p;
}
