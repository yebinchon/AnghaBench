
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsnprintf_closure {int dummy; } ;


 int write_char (int ,struct vsnprintf_closure*) ;

__attribute__((used)) static void
write_str (const char *s, struct vsnprintf_closure *cc)
{
  while (*s)
    write_char (*s++, cc);
}
