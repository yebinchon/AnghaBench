
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int describe_char (short) ;
 int fprintf (int ,char*,...) ;
 int printf (char*) ;
 char* setlocale (int ,char*) ;
 int stderr ;

int
main()
{
 short c;
 char *cur_locale;

 cur_locale = setlocale(LC_ALL, "");
 if (cur_locale)
  fprintf(stderr, "Successfully set locale to \"%s\"\n", cur_locale);
 else
 {
  fprintf(stderr, "Cannot setup locale. Either your libc does not provide\nlocale support, or your locale data is corrupt, or you have not set\nLANG or LC_CTYPE environment variable to proper value. Program aborted.\n");
  return 1;
 }

 printf("char#  char alnum alpha cntrl digit lower graph print punct space upper xdigit lo up\n");
 for (c = 0; c <= 255; c++)
  describe_char(c);

 return 0;
}
