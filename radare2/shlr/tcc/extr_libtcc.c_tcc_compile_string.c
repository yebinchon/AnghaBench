
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
typedef int TCCState ;


 TYPE_1__* file ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;
 int tcc_close () ;
 int tcc_compile (int *) ;
 int tcc_open_bf (int *,char*,int) ;

int tcc_compile_string(TCCState *s, const char *str)
{
 int len, ret;
 len = strlen (str);

 tcc_open_bf (s, "<string>", len);
 memcpy (file->buffer, str, len);
 ret = tcc_compile (s);
 tcc_close ();
 return ret;
}
