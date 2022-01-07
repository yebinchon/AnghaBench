
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uchar ;
struct TYPE_3__ {char* val; scalar_t__ key; } ;
typedef TYPE_1__ kv ;
typedef int FILE ;


 int fprintf (int *,char*,char,char*) ;

__attribute__((used)) static void printkv(kv *kvarr, FILE *fp, uchar max)
{
 uchar i = 0;

 for (; i < max && kvarr[i].key; ++i)
  fprintf(fp, " %c: %s\n", (char)kvarr[i].key, kvarr[i].val);
}
