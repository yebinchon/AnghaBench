
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_growable_string {int dummy; } ;


 int d_growable_string_append_buffer (struct d_growable_string*,char const*,size_t) ;

__attribute__((used)) static void
d_growable_string_callback_adapter (const char *s, size_t l, void *opaque)
{
  struct d_growable_string *dgs = (struct d_growable_string*) opaque;

  d_growable_string_append_buffer (dgs, s, l);
}
