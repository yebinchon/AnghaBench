
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_9__ {char const* name; int prev; int lit; scalar_t__ len; } ;
typedef TYPE_1__ symbol_name ;
typedef size_t mrb_sym ;
struct TYPE_10__ {size_t symidx; size_t symcapa; int* symhash; TYPE_1__* symtbl; } ;
typedef TYPE_2__ mrb_state ;
typedef scalar_t__ mrb_bool ;


 int FALSE ;
 size_t SYMBOL_NORMAL_SHIFT ;
 int TRUE ;
 size_t find_symbol (TYPE_2__*,char const*,size_t,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ mrb_malloc (TYPE_2__*,size_t) ;
 scalar_t__ mrb_realloc (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ mrb_ro_data_p (char const*) ;
 int sym_validate_len (TYPE_2__*,size_t) ;

__attribute__((used)) static mrb_sym
sym_intern(mrb_state *mrb, const char *name, size_t len, mrb_bool lit)
{
  mrb_sym sym;
  symbol_name *sname;
  uint8_t hash;

  sym_validate_len(mrb, len);
  sym = find_symbol(mrb, name, len, &hash);
  if (sym > 0) return sym;


  sym = ++mrb->symidx;
  if (mrb->symcapa < sym) {
    if (mrb->symcapa == 0) mrb->symcapa = 100;
    else mrb->symcapa = (size_t)(mrb->symcapa * 6 / 5);
    mrb->symtbl = (symbol_name*)mrb_realloc(mrb, mrb->symtbl, sizeof(symbol_name)*(mrb->symcapa+1));
  }
  sname = &mrb->symtbl[sym];
  sname->len = (uint16_t)len;
  if (lit || mrb_ro_data_p(name)) {
    sname->name = name;
    sname->lit = TRUE;
  }
  else {
    char *p = (char *)mrb_malloc(mrb, len+1);
    memcpy(p, name, len);
    p[len] = 0;
    sname->name = (const char*)p;
    sname->lit = FALSE;
  }
  if (mrb->symhash[hash]) {
    mrb_sym i = sym - mrb->symhash[hash];
    if (i > 0xff)
      sname->prev = 0xff;
    else
      sname->prev = i;
  }
  else {
    sname->prev = 0;
  }
  mrb->symhash[hash] = sym;

  return sym<<SYMBOL_NORMAL_SHIFT;
}
