
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ch ;
 int cinp () ;
 scalar_t__ is_space (int ) ;

__attribute__((used)) static inline void skip_spaces(void)
{
 while (is_space (ch))
  cinp ();
}
