
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atol (int ) ;
 int buffer ;
 int read_obj (char const*) ;

__attribute__((used)) static unsigned long get_obj(const char *name)
{
 if (!read_obj(name))
  return 0;

 return atol(buffer);
}
