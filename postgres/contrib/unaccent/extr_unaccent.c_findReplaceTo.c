
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nextChar; scalar_t__ replaceTo; } ;
typedef TYPE_1__ TrieChar ;



__attribute__((used)) static TrieChar *
findReplaceTo(TrieChar *node, const unsigned char *src, int srclen,
     int *p_matchlen)
{
 TrieChar *result = ((void*)0);
 int matchlen = 0;

 *p_matchlen = 0;

 while (node && matchlen < srclen)
 {
  node = node + src[matchlen];
  matchlen++;

  if (node->replaceTo)
  {
   result = node;
   *p_matchlen = matchlen;
  }

  node = node->nextChar;
 }

 return result;
}
