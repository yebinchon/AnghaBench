
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pg_wchar ;
struct TYPE_3__ {scalar_t__* input; scalar_t__* output; int linenum; } ;
typedef TYPE_1__ pg_unicode_test ;


 TYPE_1__* UnicodeNormalizationTests ;
 int exit (int) ;
 scalar_t__ pg_wcscmp (scalar_t__*,scalar_t__*) ;
 char* print_wchar_str (scalar_t__*) ;
 int printf (char*,...) ;
 scalar_t__* unicode_normalize_kc (scalar_t__*) ;

int
main(int argc, char **argv)
{
 const pg_unicode_test *test;

 for (test = UnicodeNormalizationTests; test->input[0] != 0; test++)
 {
  pg_wchar *result;

  result = unicode_normalize_kc(test->input);

  if (pg_wcscmp(test->output, result) != 0)
  {
   printf("FAILURE (NormalizationTest.txt line %d):\n", test->linenum);
   printf("input:\t%s\n", print_wchar_str(test->input));
   printf("expected:\t%s\n", print_wchar_str(test->output));
   printf("got\t%s\n", print_wchar_str(result));
   printf("\n");
   exit(1);
  }
 }

 printf("All tests successful!\n");
 exit(0);
}
