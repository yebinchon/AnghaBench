
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nchar; scalar_t__ issuffix; TYPE_1__* node; } ;
struct TYPE_4__ {int type; struct TYPE_4__* next; scalar_t__ data; } ;
typedef TYPE_1__ RegisNode ;
typedef TYPE_2__ Regis ;


 int ERROR ;


 int elog (int ,char*,int) ;
 int mb_strchr (char*,char*) ;
 int pg_mblen (char*) ;

bool
RS_execute(Regis *r, char *str)
{
 RegisNode *ptr = r->node;
 char *c = str;
 int len = 0;

 while (*c)
 {
  len++;
  c += pg_mblen(c);
 }

 if (len < r->nchar)
  return 0;

 c = str;
 if (r->issuffix)
 {
  len -= r->nchar;
  while (len-- > 0)
   c += pg_mblen(c);
 }


 while (ptr)
 {
  switch (ptr->type)
  {
   case 128:
    if (!mb_strchr((char *) ptr->data, c))
     return 0;
    break;
   case 129:
    if (mb_strchr((char *) ptr->data, c))
     return 0;
    break;
   default:
    elog(ERROR, "unrecognized regis node type: %d", ptr->type);
  }
  ptr = ptr->next;
  c += pg_mblen(c);
 }

 return 1;
}
