
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf1 ;
struct TYPE_5__ {int t; TYPE_1__* ref; } ;
struct TYPE_4__ {int v; TYPE_2__ type; struct TYPE_4__* next; } ;
typedef TYPE_1__ Sym ;
typedef TYPE_2__ CType ;


 int SYM_FIRST_ANOM ;
 int SYM_STRUCT ;
 int VT_ARRAY ;

 int VT_BTYPE ;
 int VT_CHAR ;
 int VT_CONSTANT ;
 int VT_TYPE ;

 int VT_UNSIGNED ;

 int VT_VOLATILE ;
 char const* get_tok_str (int,int *) ;
 int pstrcat (char*,int,char const*) ;
 int pstrcpy (char*,int,char*) ;
 int strcat_printf (char*,int,char*,int ) ;

__attribute__((used)) static void type_to_str(char *buf, int buf_size, CType *type, const char *varstr) {
 int bt, v, t;
 Sym *s, *sa;
 char buf1[256];
 const char *tstr;
 t = type->t & VT_TYPE;
 bt = t & VT_BTYPE;
 buf[0] = '\0';
 if (t & VT_CONSTANT) {
  pstrcat (buf, buf_size, "const ");
 }
 if (t & VT_VOLATILE) {
  pstrcat (buf, buf_size, "volatile ");
 }
 switch (bt) {
 case 128:
  tstr = "void";
  goto add_tstr;
 case 142:
  tstr = "bool";
  goto add_tstr;
 case 134:
  if (t & VT_UNSIGNED) {
   tstr = "uint8_t";
  } else {
   if (t & VT_CHAR) {
    tstr = "char";
   } else {
    tstr = "int8_t";
   }
  }
  goto add_tstr;
 case 137:
  if (t & VT_UNSIGNED) {
   tstr = "uint16_t";
  } else {
   tstr = "int16_t";
  }
  goto add_tstr;
 case 136:
  if (t & VT_UNSIGNED) {
   tstr = "uint32_t";
  } else {
   tstr = "int32_t";
  }
  goto add_tstr;
 case 132:
  tstr = "long";
  goto add_tstr;
 case 135:
  if (t & VT_UNSIGNED) {
   tstr = "uint64_t";
  } else {
   tstr = "int64_t";
  }
  goto add_tstr;
 case 139:
  tstr = "float";
  goto add_tstr;
 case 141:
  tstr = "double";
  goto add_tstr;
 case 133:
  tstr = "long double";
add_tstr:
  pstrcat (buf, buf_size, tstr);
  if ((t & VT_UNSIGNED) && (bt != 134) &&
      (bt != 137) && (bt != 136) &&
      (bt != 135)) {
   pstrcat (buf, buf_size, "unsigned ");
  }
  break;
 case 140:
 case 130:
 case 129:
  if (bt == 130) {
   tstr = "struct ";
  } else if (bt == 129) {
   tstr = "union ";
  } else {
   tstr = "enum ";
  }
  pstrcat (buf, buf_size, tstr);
  v = type->ref->v & ~SYM_STRUCT;
  if (v >= SYM_FIRST_ANOM) {
   strcat_printf (buf, buf_size, "%u", v - SYM_FIRST_ANOM);
  } else {
   pstrcat (buf, buf_size, get_tok_str (v, ((void*)0)));
  }
  break;
 case 138:
  s = type->ref;
  type_to_str (buf, buf_size, &s->type, varstr);
  pstrcat (buf, buf_size, "(");
  sa = s->next;
  while (sa != ((void*)0)) {
   type_to_str (buf1, sizeof(buf1), &sa->type, ((void*)0));
   pstrcat (buf, buf_size, buf1);
   sa = sa->next;
   if (sa) {
    pstrcat (buf, buf_size, ", ");
   }
  }
  pstrcat (buf, buf_size, ")");
  goto no_var;
 case 131:
  s = type->ref;
  if (t & VT_ARRAY) {
   type_to_str (buf, buf_size, &s->type, ((void*)0));
  } else {
   pstrcpy (buf1, sizeof(buf1), "*");
   if (varstr) {
    pstrcat (buf1, sizeof(buf1), varstr);
   }
   type_to_str (buf, buf_size, &s->type, buf1);
  }
  goto no_var;
 }
 if (varstr) {
  pstrcat (buf, buf_size, " ");
  pstrcat (buf, buf_size, varstr);
 }
no_var:
 ;
}
