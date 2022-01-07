
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int NEXTBYTE () ;
 int PUTBYTE (int) ;

__attribute__((used)) static void
copy_rest_of_file(void)
{
  int c;

  while ((c = NEXTBYTE()) != EOF)
    PUTBYTE(c);
}
