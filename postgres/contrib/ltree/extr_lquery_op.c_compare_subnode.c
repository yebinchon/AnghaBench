
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int len; } ;
typedef TYPE_1__ ltree_level ;


 char* getlexeme (char*,char*,int*) ;
 int stub1 (char const*,char const*,size_t) ;

bool
compare_subnode(ltree_level *t, char *qn, int len, int (*cmpptr) (const char *, const char *, size_t), bool anyend)
{
 char *endt = t->name + t->len;
 char *endq = qn + len;
 char *tn;
 int lent,
    lenq;
 bool isok;

 while ((qn = getlexeme(qn, endq, &lenq)) != ((void*)0))
 {
  tn = t->name;
  isok = 0;
  while ((tn = getlexeme(tn, endt, &lent)) != ((void*)0))
  {
   if (
    (
     lent == lenq ||
     (lent > lenq && anyend)
     ) &&
    (*cmpptr) (qn, tn, lenq) == 0)
   {

    isok = 1;
    break;
   }
   tn += lent;
  }

  if (!isok)
   return 0;
  qn += lenq;
 }

 return 1;
}
