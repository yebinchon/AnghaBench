
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nchars; char* chars; int nranges; scalar_t__ exclude; TYPE_1__* ranges; } ;
struct TYPE_4__ {char start; char end; } ;
typedef TYPE_2__ CharSet ;



__attribute__((used)) static int CharInSet(CharSet *cset, int c)
{
 char ch = (char) c;
 int i, match = 0;

 for (i = 0; i < cset->nchars; i++) {
  if (cset->chars[i] == ch) {
   match = 1;
   break;
  }
 }
 if (!match) {
  for (i = 0; i < cset->nranges; i++) {
   if ((cset->ranges[i].start <= ch)
    && (ch <= cset->ranges[i].end)) {
    match = 1;
    break;
   }
  }
 }
 return (cset->exclude ? !match : match);
}
