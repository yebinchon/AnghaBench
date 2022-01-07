
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ len; char const* name; } ;
typedef TYPE_1__ ltree_level ;
struct TYPE_13__ {int numlevel; } ;
struct TYPE_12__ {char* operand; TYPE_7__* node; } ;
struct TYPE_11__ {int distance; int flag; scalar_t__ length; } ;
typedef TYPE_2__ ITEM ;
typedef TYPE_3__ CHKVAL ;


 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 TYPE_1__* LTREE_FIRST (TYPE_7__*) ;
 int LVAR_ANYEND ;
 int LVAR_INCASE ;
 int LVAR_SUBLEXEME ;
 scalar_t__ compare_subnode (TYPE_1__*,char*,scalar_t__,int (*) (char const*,char const*,size_t),int) ;
 int ltree_strncasecmp (char const*,char const*,size_t) ;
 int strncmp (char const*,char const*,size_t) ;
 int stub1 (char const*,char const*,size_t) ;

__attribute__((used)) static bool
checkcondition_str(void *checkval, ITEM *val)
{
 ltree_level *level = LTREE_FIRST(((CHKVAL *) checkval)->node);
 int tlen = ((CHKVAL *) checkval)->node->numlevel;
 char *op = ((CHKVAL *) checkval)->operand + val->distance;
 int (*cmpptr) (const char *, const char *, size_t);

 cmpptr = (val->flag & LVAR_INCASE) ? ltree_strncasecmp : strncmp;
 while (tlen > 0)
 {
  if (val->flag & LVAR_SUBLEXEME)
  {
   if (compare_subnode(level, op, val->length, cmpptr, (val->flag & LVAR_ANYEND)))
    return 1;
  }
  else if (
     (
      val->length == level->len ||
      (level->len > val->length && (val->flag & LVAR_ANYEND))
      ) &&
     (*cmpptr) (op, level->name, val->length) == 0)
   return 1;

  tlen--;
  level = LEVEL_NEXT(level);
 }

 return 0;
}
