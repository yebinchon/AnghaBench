
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cur; } ;
struct TYPE_5__ {int (* disassemble ) (TYPE_2__*,int *,int *,int) ;} ;
typedef int RStrBuf ;
typedef TYPE_2__ RAsm ;


 int cd ;
 char* cs_insn_name (int ,int) ;
 char* r_str_newf (char*,char const*) ;
 int r_strbuf_append (int *,char const*) ;
 char* r_strbuf_drain (int *) ;
 int * r_strbuf_new (char*) ;
 char* strdup (char const*) ;
 int stub1 (TYPE_2__*,int *,int *,int) ;

__attribute__((used)) static char *mnemonics(RAsm *a, int id, bool json) {
 int i;
 a->cur->disassemble (a, ((void*)0), ((void*)0), -1);
 if (id != -1) {
  const char *name = cs_insn_name (cd, id);
  if (json) {
   return name? r_str_newf ("[\"%s\"]\n", name): ((void*)0);
  }
  return name? strdup (name): ((void*)0);
 }
 RStrBuf *buf = r_strbuf_new ("");
 if (json) {
  r_strbuf_append (buf, "[");
 }
 for (i = 1; ; i++) {
  const char *op = cs_insn_name (cd, i);
  if (!op) {
   break;
  }
  if (json) {
   r_strbuf_append (buf, "\"");
  }
  r_strbuf_append (buf, op);
  if (json) {
   if (cs_insn_name (cd, i + 1)) {
    r_strbuf_append (buf, "\",");
   } else {
    r_strbuf_append (buf, "\"]\n");
   }
  } else {
   r_strbuf_append (buf, "\n");
  }
 }
 return r_strbuf_drain (buf);
}
