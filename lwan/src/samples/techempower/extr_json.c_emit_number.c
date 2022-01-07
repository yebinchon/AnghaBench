
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SB ;


 scalar_t__ number_is_valid (char*) ;
 int sb_puts (int *,char*) ;
 int sprintf (char*,char*,double) ;

__attribute__((used)) static void emit_number(SB *out, double num)
{






 char buf[64];
 sprintf(buf, "%.16g", num);

 if (number_is_valid(buf))
  sb_puts(out, buf);
 else
  sb_puts(out, "null");
}
