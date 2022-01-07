
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dosync () ;
 scalar_t__ todo ;

__attribute__((used)) static void
dowork (void)
{
  todo = 0;
  dosync();

  todo = 0;
  dosync();
}
