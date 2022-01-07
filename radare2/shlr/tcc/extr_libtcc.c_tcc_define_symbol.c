
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* buffer; int * buf_ptr; } ;
typedef int TCCState ;


 int ch ;
 TYPE_1__* file ;
 int memcpy (char*,char const*,int) ;
 int next_nomacro () ;
 int parse_define () ;
 int strlen (char const*) ;
 int tcc_close () ;
 int tcc_open_bf (int *,char*,int) ;

void tcc_define_symbol(TCCState *s1, const char *sym, const char *value)
{
 int len1, len2;

 if (!value) {
  value = "1";
 }
 len1 = strlen (sym);
 len2 = strlen (value);


 tcc_open_bf (s1, "<define>", len1 + len2 + 1);
 memcpy (file->buffer, sym, len1);
 file->buffer[len1] = ' ';
 memcpy (file->buffer + len1 + 1, value, len2);


 ch = file->buf_ptr[0];
 next_nomacro ();
 parse_define ();

 tcc_close ();
}
