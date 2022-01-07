
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91C_CB_SIZE ;
 char* erase_seq ;
 char getc () ;
 int printf (char const* const) ;
 int putc (char) ;
 int puts (char*) ;
 int strlen (char const* const) ;

int AT91F_ReadLine (const char *const prompt, char *console_buffer)
{
 char *p = console_buffer;
 int n = 0;
 int plen = strlen (prompt);
 int col;
 char c;


 if (prompt)
  printf(prompt);
 col = plen;

 for (;;) {
  c = getc();

  switch (c) {
   case '\r':
   case '\n':
    *p = '\0';
    puts ("\n");
    return (p - console_buffer);

   case 0x03:
    console_buffer[0] = '\0';
    return (-1);

   case 0x08:
   case 0x7F:
    if (n) {
     --p;
     printf(erase_seq);
     col--;
     n--;
     }
    continue;

   default:



   if (n < (AT91C_CB_SIZE -2))
   {
    ++col;
    putc(c);
    *p++ = c;
    ++n;
   }
   else
   {
    putc('\a');
   }
  }
 }
}
