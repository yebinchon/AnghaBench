
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int num; scalar_t__* txt; } ;


 int exit (int) ;
 int fflush (int ) ;
 TYPE_1__* list ;
 int list_size ;
 scalar_t__* malloc (int) ;
 int max_size ;
 scalar_t__ memcmp (char*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,char*,int) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void add_list(char *buf, int len)
{
 if (list_size != 0 &&
     len == list[list_size-1].len &&
     memcmp(buf, list[list_size-1].txt, len) == 0) {
  list[list_size-1].num++;
  return;
 }
 if (list_size == max_size) {
  printf("max_size too small??\n");
  exit(1);
 }
 list[list_size].txt = malloc(len+1);
 list[list_size].len = len;
 list[list_size].num = 1;
 memcpy(list[list_size].txt, buf, len);
 list[list_size].txt[len] = 0;
 list_size++;
 if (list_size % 1000 == 0) {
  printf("loaded %d\r", list_size);
  fflush(stdout);
 }
}
