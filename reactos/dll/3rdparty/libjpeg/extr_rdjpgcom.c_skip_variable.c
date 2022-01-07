
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERREXIT (char*) ;
 int read_1_byte () ;
 unsigned int read_2_bytes () ;

__attribute__((used)) static void
skip_variable (void)

{
  unsigned int length;


  length = read_2_bytes();

  if (length < 2)
    ERREXIT("Erroneous JPEG marker length");
  length -= 2;

  while (length > 0) {
    (void) read_1_byte();
    length--;
  }
}
