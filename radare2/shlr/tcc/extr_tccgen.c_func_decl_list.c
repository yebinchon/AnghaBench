
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int t; } ;
struct TYPE_9__ {int v; TYPE_2__ type; struct TYPE_9__* next; } ;
typedef TYPE_1__ Sym ;
typedef TYPE_2__ CType ;
typedef int AttributeDef ;


 int SYM_FIELD ;
 int TCC_ERR (char*,int ) ;
 char TOK_ASM1 ;
 char TOK_ASM2 ;
 char TOK_ASM3 ;
 char TOK_EOF ;
 int TYPE_DIRECT ;
 int VT_STORAGE ;
 int convert_parameter_type (TYPE_2__*) ;
 int expect (char*) ;
 int get_tok_str (int,int *) ;
 scalar_t__ is_enum (TYPE_2__*) ;
 scalar_t__ is_structured (TYPE_2__*) ;
 int next () ;
 int parse_btype (TYPE_2__*,int *) ;
 int skip (char) ;
 scalar_t__ tcc_nerr () ;
 char tok ;
 int type_decl (TYPE_2__*,int *,int*,int ) ;

__attribute__((used)) static void func_decl_list(Sym *func_sym) {
 AttributeDef ad;
 int v;
 Sym *s = ((void*)0);
 CType btype, type;


 while (tcc_nerr () == 0 && tok != '{' && tok != ';' && tok != ',' && tok != TOK_EOF &&
        tok != TOK_ASM1 && tok != TOK_ASM2 && tok != TOK_ASM3) {
  if (!parse_btype (&btype, &ad)) {
   expect ("declaration list");
  }
  if ((is_enum(&btype) || is_structured(&btype)) && tok == ';') {

  } else {
   while (tcc_nerr () == 0) {
    int found;
    type = btype;
    type_decl (&type, &ad, &v, TYPE_DIRECT);

    s = func_sym;
    found = 0;
    while ((s = s->next) != ((void*)0)) {
     if ((s->v & ~SYM_FIELD) == v) {
      found = 1;
      break;
     }
    }
    if (found == 0) {
     TCC_ERR ("declaration for parameter '%s' but no such parameter",
      get_tok_str (v, ((void*)0)));
    }

    if (type.t & VT_STORAGE) {
     TCC_ERR ("storage class specified for '%s'", get_tok_str (v, ((void*)0)));
    }
    convert_parameter_type (&type);

    if (s) {
     s->type = type;
    }

    if (tok == ',') {
     next ();
    } else {
     break;
    }
   }
  }
  skip (';');
 }
}
