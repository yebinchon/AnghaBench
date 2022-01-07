
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsnprintf_closure {int dummy; } ;


 int write_char (char const,struct vsnprintf_closure*) ;

__attribute__((used)) static void
write_fill (const char ch, int n, struct vsnprintf_closure *cc)
{
  int i;
  for (i = 0; i < n; i++)
    write_char (ch, cc);
}
