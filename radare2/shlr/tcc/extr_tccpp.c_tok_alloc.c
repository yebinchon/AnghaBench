
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; struct TYPE_6__* hash_next; int str; } ;
typedef TYPE_1__ TokenSym ;


 unsigned int TOK_HASH_FUNC (unsigned int,unsigned char) ;
 unsigned int TOK_HASH_INIT ;
 int TOK_HASH_SIZE ;
 TYPE_1__** hash_ident ;
 int memcmp (int ,char const*,int) ;
 TYPE_1__* tok_alloc_new (TYPE_1__**,char const*,int) ;

TokenSym *tok_alloc(const char *str, int len)
{
 TokenSym *ts, **pts;
 int i;
 unsigned int h;

 h = TOK_HASH_INIT;
 for (i = 0; i < len; i++) {
  h = TOK_HASH_FUNC (h, ((unsigned char *) str)[i]);
 }
 h &= (TOK_HASH_SIZE - 1);

 pts = &hash_ident[h];
 for (;;) {
  ts = *pts;
  if (!ts) {
   break;
  }
  if (ts->len == len && !memcmp (ts->str, str, len)) {
   return ts;
  }
  pts = &(ts->hash_next);
 }
 return tok_alloc_new (pts, str, len);
}
