
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsm_vte {int dummy; } ;
typedef int out ;



__attribute__((used)) static void terminal_write_fn(struct tsm_vte *vte,
         const char *u8,
         size_t len,
         void *data)
{

  static char out[4096];
  while (len--)
    out[len % sizeof(out)] = u8[len];
}
