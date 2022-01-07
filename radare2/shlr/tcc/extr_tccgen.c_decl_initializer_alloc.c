
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_21__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_30__ {int str; } ;
typedef TYPE_2__ TokenString ;
struct TYPE_36__ {TYPE_3__* sym; } ;
struct TYPE_35__ {int aligned; scalar_t__ packed; } ;
struct TYPE_34__ {int t; TYPE_3__* ref; } ;
struct TYPE_33__ {int member_0; } ;
struct TYPE_32__ {int member_0; } ;
struct TYPE_29__ {int t; TYPE_1__* ref; } ;
struct TYPE_31__ {scalar_t__ c; char* asm_label; TYPE_21__ type; struct TYPE_31__* next; } ;
struct TYPE_28__ {scalar_t__ c; } ;
typedef TYPE_3__ Sym ;
typedef TYPE_4__ ParseState ;
typedef TYPE_5__ CValue ;
typedef TYPE_6__ CType ;
typedef TYPE_7__ AttributeDef ;


 int TCC_ERR (char*,...) ;
 char TOK_LSTR ;
 char TOK_STR ;
 int VT_ARRAY ;
 int VT_CONST ;
 int VT_EXTERN ;
 int VT_LOCAL ;
 int VT_SYM ;
 int VT_VALMASK ;
 int VT_WEAK ;
 int decl_initializer (TYPE_6__*,int ,int,int) ;
 int get_tok_str (int,int *) ;
 int is_compatible_types (TYPE_21__*,TYPE_6__*) ;
 scalar_t__ is_struct (TYPE_6__*) ;
 int loc ;
 int macro_ptr ;
 int next () ;
 int pointed_size (TYPE_21__*) ;
 int save_parse_state (TYPE_4__*) ;
 TYPE_3__* sym_find (int) ;
 TYPE_3__* sym_push (int,TYPE_6__*,int,int) ;
 scalar_t__ tcc_nerr () ;
 char tok ;
 int tok_str_add (TYPE_2__*,int) ;
 int tok_str_add_tok (TYPE_2__*) ;
 int tok_str_new (TYPE_2__*) ;
 int type_size (TYPE_6__*,int*) ;
 int vset (TYPE_6__*,int,int) ;
 int vsetc (TYPE_6__*,int,TYPE_5__*) ;
 TYPE_9__* vtop ;
 int weaken_symbol (TYPE_3__*) ;

__attribute__((used)) static void decl_initializer_alloc(CType *type, AttributeDef *ad, int r, int has_init, int v, char *asm_label, int scope) {
 int size, align, addr;
 int level;
 ParseState saved_parse_state = {
  0
 };
 TokenString init_str;
 Sym *flexible_array;

 flexible_array = ((void*)0);
 if (is_struct(type)) {
  Sym *field;
  field = type->ref;
  while (field && field->next)
   field = field->next;
  if (field && (field->type.t & VT_ARRAY) && (field->type.ref->c < 0)) {
   flexible_array = field;
  }
 }

 size = type_size (type, &align);






 tok_str_new (&init_str);
 if (size < 0 || (flexible_array && has_init)) {
  if (!has_init) {
   TCC_ERR ("unknown type size");
  }

  if (has_init == 2) {

   while (tok == TOK_STR || tok == TOK_LSTR) {
    tok_str_add_tok (&init_str);
    next ();
   }
  } else {
   level = 0;
   while (tcc_nerr() == 0 && (level > 0 || (tok != ',' && tok != ';'))) {
    if (tok < 0) {
     TCC_ERR ("unexpected end of file in initializer");
    }
    tok_str_add_tok (&init_str);
    if (tok == '{') {
     level++;
    } else if (tok == '}') {
     level--;
     if (level <= 0) {
      next ();
      break;
     }
    }
    next ();
   }
  }
  tok_str_add (&init_str, -1);
  tok_str_add (&init_str, 0);


  save_parse_state (&saved_parse_state);

  macro_ptr = init_str.str;
  next ();
  decl_initializer (type, 0, 1, 1);

  macro_ptr = init_str.str;
  next ();


  size = type_size (type, &align);
  if (size < 0) {
   TCC_ERR ("unknown type size");
  }
 }
 if (flexible_array) {
  size += flexible_array->type.ref->c * pointed_size (&flexible_array->type);
 }

 if (ad->aligned) {
  if (ad->aligned > align) {
   align = ad->aligned;
  }
 } else if (ad->packed) {
  align = 1;
 }
 if ((r & VT_VALMASK) == VT_LOCAL) {
  loc = (loc - size) & - align;
  addr = loc;
  if (v) {

   sym_push (v, type, r, addr);
  } else {

   vset (type, r, addr);
  }
 } else {
  Sym *sym;

  sym = ((void*)0);
  if (v && scope == VT_CONST) {

   sym = sym_find (v);
   if (sym) {
    if (!is_compatible_types (&sym->type, type)) {
     TCC_ERR ("incompatible types for redefinition of '%s'",
      get_tok_str (v, ((void*)0)));
    }
    if (sym->type.t & VT_EXTERN) {

     sym->type.t &= ~VT_EXTERN;


     if ((sym->type.t & VT_ARRAY) &&
         sym->type.ref->c < 0 &&
         type->ref->c >= 0) {
      sym->type.ref->c = type->ref->c;
     }
    } else {







     if (!has_init) {
      goto no_alloc;
     }
    }
   }
  }

  if (v) {
   if (scope != VT_CONST || !sym) {
    sym = sym_push (v, type, r | VT_SYM, 0);
    sym->asm_label = asm_label;
   }
  } else {
   CValue cval = { 0 };
   vsetc (type, VT_CONST | VT_SYM, &cval);
   vtop->sym = sym;
  }

  if ((type->t & VT_WEAK) && sym) {
   weaken_symbol (sym);
  }
 }
no_alloc:
 ;
}
