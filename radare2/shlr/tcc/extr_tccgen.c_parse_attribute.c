
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int warn_unsupported; } ;
struct TYPE_10__ {int tok; } ;
struct TYPE_9__ {TYPE_1__* cstr; } ;
struct TYPE_8__ {long long aligned; int packed; int weak; int func_export; int func_import; int mode; int func_call; int alias_target; } ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
typedef TYPE_2__ AttributeDef ;


 int FUNC_CDECL ;
 int FUNC_FASTCALL1 ;
 int FUNC_FASTCALLW ;
 int FUNC_STDCALL ;
 long long MAX_ALIGN ;
 int TCC_ERR (char*) ;




 char TOK_ATTRIBUTE1 ;
 char TOK_ATTRIBUTE2 ;
 char TOK_IDENT ;
 char TOK_STR ;




 int VT_INT16 ;
 int VT_INT32 ;
 int VT_INT64 ;
 int expect (char*) ;
 long long expr_const () ;
 int get_tok_str (int,int *) ;
 int next () ;
 int skip (char) ;
 TYPE_5__* tcc_state ;
 int tcc_warning (char*,int ) ;
 char tok ;
 TYPE_4__* tok_alloc (char*,int ) ;
 TYPE_3__ tokc ;

__attribute__((used)) static void parse_attribute(AttributeDef *ad) {
 int t;
 long long n;

 while (tok == TOK_ATTRIBUTE1 || tok == TOK_ATTRIBUTE2) {
  next ();
  skip ('(');
  skip ('(');
  while (tok != ')') {
   if (tok < TOK_IDENT) {
    expect ("attribute name");
   }
   t = tok;
   next ();
   switch (t) {
   case 156:
   case 155:
    skip ('(');
    if (tok != TOK_STR) {
     expect ("alias(\"target\")");
    }
    ad->alias_target =
         tok_alloc ((char *) tokc.cstr->data, tokc.cstr->size - 1)->tok;
    next ();
    skip (')');
    break;
   case 154:
   case 153:
    if (tok == '(') {
     next ();
     n = expr_const ();
     if (n <= 0 || (n & (n - 1)) != 0) {
      TCC_ERR ("alignment must be a positive power of two");
     }
     skip (')');
    } else {
     n = MAX_ALIGN;
    }
    ad->aligned = n;
    break;
   case 138:
   case 137:
    ad->packed = 1;
    break;
   case 129:
   case 128:
    ad->weak = 1;
    break;
   case 131:
   case 130:


    break;
   case 140:
   case 139:


    break;
   case 152:
   case 151:
   case 150:
    ad->func_call = FUNC_CDECL;
    break;
   case 134:
   case 133:
   case 132:
    ad->func_call = FUNC_STDCALL;
    break;
   case 144:
    skip ('(');
    switch (tok) {
    case 143:
     ad->mode = VT_INT64 + 1;
     break;
    case 142:
     ad->mode = VT_INT16 + 1;
     break;
    case 141:
     ad->mode = VT_INT32 + 1;
     break;
    default:
     tcc_warning ("__mode__(%s) not supported\n", get_tok_str (tok, ((void*)0)));
     break;
    }
    next ();
    skip (')');
    break;
   case 149:
    ad->func_export = 1;
    break;
   case 148:
    ad->func_import = 1;
    break;
   default:
    if (tcc_state->warn_unsupported) {
     tcc_warning ("'%s' attribute ignored", get_tok_str (t, ((void*)0)));
    }

    if (tok == '(') {
     int parenthesis = 0;
     do {
      if (tok == '(') {
       parenthesis++;
      } else if (tok == ')') {
       parenthesis--;
      }
      next ();
     } while (parenthesis && tok != -1);
    }
    break;
   }
   if (tok != ',') {
    break;
   }
   next ();
  }
  skip (')');
  skip (')');
 }
}
