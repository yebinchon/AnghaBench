
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int dummy; } ;


 scalar_t__ IS_DIGIT (char const) ;
 int d_append_char (struct d_print_info*,char const) ;

__attribute__((used)) static void
d_print_java_identifier (struct d_print_info *dpi, const char *name, int len)
{
  const char *p;
  const char *end;

  end = name + len;
  for (p = name; p < end; ++p)
    {
      if (end - p > 3
   && p[0] == '_'
   && p[1] == '_'
   && p[2] == 'U')
 {
   unsigned long c;
   const char *q;

   c = 0;
   for (q = p + 3; q < end; ++q)
     {
       int dig;

       if (IS_DIGIT (*q))
  dig = *q - '0';
       else if (*q >= 'A' && *q <= 'F')
  dig = *q - 'A' + 10;
       else if (*q >= 'a' && *q <= 'f')
  dig = *q - 'a' + 10;
       else
  break;

       c = c * 16 + dig;
     }


   if (q < end && *q == '_' && c < 256)
     {
       d_append_char (dpi, c);
       p = q;
       continue;
     }
 }

      d_append_char (dpi, *p);
    }
}
