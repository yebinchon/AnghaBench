
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERREXIT (char*) ;
 int LC_CTYPE ;
 scalar_t__ isprint (int) ;
 int printf (char*,...) ;
 int putc (int,int ) ;
 int read_1_byte () ;
 unsigned int read_2_bytes () ;
 int setlocale (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
process_COM (int raw)
{
  unsigned int length;
  int ch;
  int lastch = 0;







  length = read_2_bytes();

  if (length < 2)
    ERREXIT("Erroneous JPEG marker length");
  length -= 2;

  while (length > 0) {
    ch = read_1_byte();
    if (raw) {
      putc(ch, stdout);





    } else if (ch == '\r') {
      printf("\n");
    } else if (ch == '\n') {
      if (lastch != '\r')
 printf("\n");
    } else if (ch == '\\') {
      printf("\\\\");
    } else if (isprint(ch)) {
      putc(ch, stdout);
    } else {
      printf("\\%03o", ch);
    }
    lastch = ch;
    length--;
  }
  printf("\n");





}
