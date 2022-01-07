
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int FILE_LIST ;
 int file_apprentice (struct magic_set*,char const*,int ) ;

int
magic_list(struct magic_set *ms, const char *magicfile)
{
 if (ms == ((void*)0))
  return -1;
 return file_apprentice(ms, magicfile, FILE_LIST);
}
