
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
 int const* get_ws_next_token (int const*,int) ;
 int get_ws_optype (int const*,int) ;
 int get_ws_val (int const*,int) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_length (int *) ;
 int r_strbuf_set (int *,char const*) ;
 char* sdb_fmt (char*,int) ;
 int test_ws_token_exist (int const*,int,int) ;

int wsdis(RAsmOp *op, const ut8 *buf, int len) {
 const char *buf_asm = ((void*)0);
 const ut8 *ptr = buf;
 switch (get_ws_optype (buf, len)) {
 case 128:
  return op->size = 0;
 case 130:
  r_strbuf_set (&op->buf_asm, "nop");
  return op->size = 1;
 case 129:
  ptr++;
  if (!get_ws_next_token (ptr, len - 1)) {
   return op->size = 0;
  }
  switch (*get_ws_next_token (ptr, len - 1)) {
  case ' ':
   if (test_ws_token_exist (get_ws_next_token (ptr, len - 1), 10, len - 1) == -1) {
    return op->size = 0;
   }
   int n = test_ws_token_exist (ptr - 1, 10, len);
   r_strbuf_set (&op->buf_asm, sdb_fmt ("push %d", n));
   return op->size = n;
  case 10:
   ptr = get_ws_next_token (ptr, len - 1) + 1;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ':
    r_strbuf_set (&op->buf_asm, "dup");
    break;
   case '\t':
    r_strbuf_set (&op->buf_asm, "swap");
    break;
   case 10:
    r_strbuf_set (&op->buf_asm, "pop");
    break;
   }
   return op->size = ptr - buf + 1;
  case '\t':
   ptr = get_ws_next_token (ptr, len - 1) + 1;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ':
    r_strbuf_set (&op->buf_asm, "copy");
    break;
   case 10:
    r_strbuf_set (&op->buf_asm, "slide");
    break;
   case '\t':
    r_strbuf_set (&op->buf_asm, "illegal_stack_t");
    return op->size = ptr - buf + 1;
   }
   ptr++;
   if (-1 == test_ws_token_exist (ptr, 10, len - (ptr - buf) - 1)) {
    r_strbuf_set (&op->buf_asm, "");
    return op->size = 0;
   }
   if (r_strbuf_length (&op->buf_asm) < 6) {
    r_strbuf_append (&op->buf_asm, sdb_fmt (" %d", get_ws_val (ptr, len - (ptr - buf) - 1)));
   }
   return op->size = test_ws_token_exist (ptr, 10, len - (ptr - buf) - 1) + ptr - buf + 1;
  }
 case 132:
  ptr = get_ws_next_token (ptr + 1, len - 1) + 1;
  ptr = get_ws_next_token (ptr, len - (ptr - buf));
  if (!ptr) {
   return op->size = 0;
  }
  switch (*ptr) {
  case ' ':
   r_strbuf_set (&op->buf_asm, "store");
   break;
  case '\t':
   r_strbuf_set (&op->buf_asm, "load");
   break;
  case 10:
   r_strbuf_set (&op->buf_asm, "illegal_heap");
   break;
  }
  return op->size = ptr - buf + 1;
 case 131:
  ptr = get_ws_next_token (ptr + 1, len - 1) + 1;
  ptr = get_ws_next_token (ptr, len - (ptr - buf));
  if (!ptr) {
   return op->size = 0;
  }
  switch (*ptr) {
  case ' ':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ':
    r_strbuf_set (&op->buf_asm, "putc");
    return op->size = ptr - buf + 1;
   case '\t':
    r_strbuf_set (&op->buf_asm, "puti");
    return op->size = ptr - buf + 1;
   }
   break;
  case '\t':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ':
    r_strbuf_set (&op->buf_asm, "getc");
    return op->size = ptr - buf + 1;
   case '\t':
    r_strbuf_set (&op->buf_asm, "geti");
    return op->size = ptr - buf + 1;
   }
  }
  r_strbuf_set (&op->buf_asm, "illegal_io");
  return op->size = ptr - buf + 1;
  break;
 case 134:
  ptr = get_ws_next_token (ptr + 1, len - 1) + 1;
  ptr = get_ws_next_token (ptr, len - (ptr - buf));
  if (!ptr) {
   return op->size = 0;
  }
  switch (*ptr) {
  case ' ':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ': buf_asm = "add"; break;
   case '\t': buf_asm = "sub"; break;
   case 10: buf_asm = "mul"; break;
   }
   break;
  case '\t':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case ' ': buf_asm = "div"; break;
   case '\t': buf_asm = "mod"; break;
   case 10: buf_asm = "illegal_ar_t"; break;
   }
   break;
  case 10:
   buf_asm = "illegal_ar";
   break;
  }
  if (buf_asm) {
   r_strbuf_set (&op->buf_asm, buf_asm);
  }
  return op->size = ptr - buf + 1;
 case 133:
  ptr = get_ws_next_token (ptr + 1, len - 1);
  if (!ptr) {
   return op->size = 0;
  }
  switch (*ptr) {
  case 10:
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   if (*ptr == 10) {
    r_strbuf_set (&op->buf_asm, "exit");
   } else {
    r_strbuf_set (&op->buf_asm, "illegal_fl_lf");
   }
   return op->size = ptr - buf + 1;
  case '\t':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case 10:
    r_strbuf_set (&op->buf_asm, "ret");
    return op->size = ptr - buf + 1;
   case '\t':
    r_strbuf_set (&op->buf_asm, "jn");
    break;
   case ' ':
    r_strbuf_set (&op->buf_asm, "jz");
    break;
   }
   ptr++;
   if (-1 == test_ws_token_exist (ptr, 10, len - (ptr - buf))) {
    r_strbuf_set (&op->buf_asm, "");
    return op->size = 0;
   }
   if (r_strbuf_length (&op->buf_asm) == 2) {
    r_strbuf_append (&op->buf_asm, sdb_fmt (" %d", get_ws_val (ptr, len - (ptr - buf) - 1)));
   }
   return op->size = ptr - buf + test_ws_token_exist (ptr, 10, len - (ptr - buf)) + 1;
  case ' ':
   ptr++;
   ptr = get_ws_next_token (ptr, len - (ptr - buf));
   if (!ptr) {
    return op->size = 0;
   }
   switch (*ptr) {
   case 10: buf_asm = "jmp"; break;
   case '\t': buf_asm = "call"; break;
   case ' ': buf_asm = "mark"; break;
   }
   ptr++;
   if (-1 == test_ws_token_exist (ptr, 10, len - (ptr - buf))) {
    r_strbuf_set (&op->buf_asm, "invalid");
    return op->size = 0;
   }
   if (buf_asm) {
    r_strbuf_set (&op->buf_asm, buf_asm);
   }
   r_strbuf_append (&op->buf_asm, sdb_fmt (" %d", get_ws_val (ptr, len - (ptr - buf) - 1)));
   return op->size = ptr - buf + test_ws_token_exist (ptr, 10, len - (ptr - buf)) + 1;
  }
 }
 r_strbuf_set (&op->buf_asm, "wtf");
 return op->size = 0;
}
