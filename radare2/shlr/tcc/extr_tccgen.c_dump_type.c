
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int t; TYPE_1__* ref; } ;
struct TYPE_4__ {int asm_label; int r; int v; } ;
typedef TYPE_2__ CType ;


 int VT_BTYPE ;
 int eprintf (char*,...) ;
 char* get_tok_str (int ,int *) ;

void dump_type(CType *type, int depth) {
 if (depth <= 0) {
  return;
 }
 eprintf ("------------------------\n");
 int bt = type->t & VT_BTYPE;
 eprintf ("BTYPE = %d ", bt);
 switch (bt) {
 case 128: eprintf ("[UNION]\n");
  break;
 case 129: eprintf ("[STRUCT]\n");
  break;
 case 130: eprintf ("[PTR]\n");
  break;
 case 135: eprintf ("[ENUM]\n");
  break;
 case 132: eprintf ("[INT64_T]\n");
  break;
 case 133: eprintf ("[INT32_T]\n");
  break;
 case 134: eprintf ("[INT16_T]\n");
  break;
 case 131: eprintf ("[INT8_T]\n");
  break;
 default:
  eprintf ("\n");
  break;
 }
 if (type->ref) {
  eprintf ("v = %d\n", type->ref->v);
  char *varstr = ((void*)0);
  varstr = get_tok_str (type->ref->v, ((void*)0));
  if (varstr) {
   eprintf ("var = %s\n", varstr);
  }
  if (type->ref->asm_label) {
   eprintf ("asm_label = %s\n", type->ref->asm_label);
  }
  eprintf ("r = %d\n", type->ref->r);
  eprintf ("associated type:\n");

 }
}
