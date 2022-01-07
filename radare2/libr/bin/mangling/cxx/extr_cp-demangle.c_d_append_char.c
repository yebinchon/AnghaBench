
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_print_info {int len; char* buf; char last_char; } ;


 int d_print_flush (struct d_print_info*) ;

__attribute__((used)) static inline void
d_append_char (struct d_print_info *dpi, char c)
{
  if (dpi->len == sizeof (dpi->buf) - 1)
    d_print_flush (dpi);

  dpi->buf[dpi->len++] = c;
  dpi->last_char = c;
}
