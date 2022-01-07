
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bits; int alacarte_link; int nocommon; int char_is_unsigned; int leading_underscore; int seg_size; int include_stack; int include_stack_ptr; int output_type; void* os; void* arch; } ;
typedef TYPE_1__ TCCState ;


 int MACRO_OBJ ;
 int TCC_OUTPUT_MEMORY ;
 int TCC_VERSION ;
 int TOK___DATE__ ;
 int TOK___FILE__ ;
 int TOK___LINE__ ;
 int TOK___TIME__ ;
 int __FreeBSD__ ;
 int define_push (int ,int ,int *,int *) ;
 int preprocess_new () ;
 int sprintf (char*,char*,int) ;
 int sscanf (int ,char*,int*,int*,int*) ;
 char* str (int ) ;
 void* strdup (char const*) ;
 int strncmp (char const*,char*,int) ;
 int tcc_cleanup () ;
 int tcc_define_symbol (TYPE_1__*,char*,char*) ;
 TYPE_1__* tcc_mallocz (int) ;
 TYPE_1__* tcc_state ;

TCCState *tcc_new(const char *arch, int bits, const char *os)
{
 TCCState *s;
 char buffer[100];
 int a, b, c;

 if (!arch || !os) {
  return ((void*)0);
 }
 tcc_cleanup ();
 s = tcc_mallocz (sizeof(TCCState));
 if (!s) {
  return ((void*)0);
 }
 tcc_state = s;
 s->arch = strdup (arch);
 s->bits = bits;
 s->os = strdup (os);
 s->output_type = TCC_OUTPUT_MEMORY;
 preprocess_new ();
 s->include_stack_ptr = s->include_stack;



 define_push (TOK___LINE__, MACRO_OBJ, ((void*)0), ((void*)0));
 define_push (TOK___FILE__, MACRO_OBJ, ((void*)0), ((void*)0));
 define_push (TOK___DATE__, MACRO_OBJ, ((void*)0), ((void*)0));
 define_push (TOK___TIME__, MACRO_OBJ, ((void*)0), ((void*)0));


 sscanf (TCC_VERSION, "%d.%d.%d", &a, &b, &c);
 sprintf (buffer, "%d", a * 10000 + b * 100 + c);
 tcc_define_symbol (s, "__TINYC__", buffer);
 tcc_define_symbol (s, "__R2TINYC__", buffer);


 tcc_define_symbol (s, "__STDC__", ((void*)0));
 tcc_define_symbol (s, "__STDC_VERSION__", "199901L");
 tcc_define_symbol (s, "__STDC_HOSTED__", ((void*)0));


 tcc_define_symbol (s, "ut8", "uint8_t");
 tcc_define_symbol (s, "ut16", "uint16_t");
 tcc_define_symbol (s, "ut32", "uint32_t");
 tcc_define_symbol (s, "ut64", "uint64_t");

 tcc_define_symbol (s, "st8", "int8_t");
 tcc_define_symbol (s, "st16", "int16_t");
 tcc_define_symbol (s, "st32", "int32_t");
 tcc_define_symbol (s, "st64", "int64_t");


 if (!strncmp (arch, "x86", 3)) {
  if (bits == 32 || bits == 16) {
   tcc_define_symbol (s, "__i386__", ((void*)0));
   tcc_define_symbol (s, "__i386", ((void*)0));
   tcc_define_symbol (s, "i386", ((void*)0));
  } else {
   tcc_define_symbol (s, "__x86_64__", ((void*)0));
  }
 } else if (!strncmp (arch, "arm", 3)) {
  tcc_define_symbol (s, "__ARM_ARCH_4__", ((void*)0));
  tcc_define_symbol (s, "__arm_elf__", ((void*)0));
  tcc_define_symbol (s, "__arm_elf", ((void*)0));
  tcc_define_symbol (s, "arm_elf", ((void*)0));
  tcc_define_symbol (s, "__arm__", ((void*)0));
  tcc_define_symbol (s, "__arm", ((void*)0));
  tcc_define_symbol (s, "arm", ((void*)0));
  tcc_define_symbol (s, "__APCS_32__", ((void*)0));
 }



 if (!strncmp (os, "windows", 7)) {
  tcc_define_symbol (s, "__WINDOWS__", ((void*)0));
  if (bits == 64) {
   tcc_define_symbol (s, "_WIN64", ((void*)0));
  }
 } else {
  tcc_define_symbol (s, "__unix__", ((void*)0));
  tcc_define_symbol (s, "__unix", ((void*)0));
  tcc_define_symbol (s, "unix", ((void*)0));

  if (!strncmp (os, "linux", 5)) {
   tcc_define_symbol (s, "__linux__", ((void*)0));
   tcc_define_symbol (s, "__linux", ((void*)0));
  }

  if (!strncmp (os, "freebsd", 7)) {
   tcc_define_symbol (s, "__FreeBSD__", "__FreeBSD__");
  }

 }


 if (!strncmp (os, "windows", 7) && (bits == 64)) {
  tcc_define_symbol (s, "__SIZE_TYPE__", "unsigned long long");
  tcc_define_symbol (s, "__PTRDIFF_TYPE__", "long long");
 } else {
  tcc_define_symbol (s, "__SIZE_TYPE__", "unsigned long");
  tcc_define_symbol (s, "__PTRDIFF_TYPE__", "long");
 }

 if (!strncmp (os, "windows", 7)) {
  tcc_define_symbol (s, "__WCHAR_TYPE__", "unsigned short");
 } else {
  tcc_define_symbol (s, "__WCHAR_TYPE__", "int");

  tcc_define_symbol (s, "__REDIRECT(name, proto, alias)", "name proto __asm__(#alias)");
  tcc_define_symbol (s, "__REDIRECT_NTH(name, proto, alias)", "name proto __asm__(#alias) __THROW");
 }

 s->alacarte_link = 1;
 s->nocommon = 1;
 if (!strncmp (arch, "x86", 3)) {

  if (bits == 32 || bits == 16) {
   s->seg_size = 32;
  }
 }
 return s;
}
