
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int inp_file; } ;


 int fgetc (int ) ;

__attribute__((used)) static int
inp_file_hook(struct ud* u)
{
  return fgetc(u->inp_file);
}
