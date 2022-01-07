
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* replaceTo; int replacelen; struct TYPE_4__* nextChar; } ;
typedef TYPE_1__ TrieChar ;


 int Assert (int) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static TrieChar *
placeChar(TrieChar *node, const unsigned char *str, int lenstr,
    const char *replaceTo, int replacelen)
{
 TrieChar *curnode;

 if (!node)
  node = (TrieChar *) palloc0(sizeof(TrieChar) * 256);

 Assert(lenstr > 0);

 curnode = node + *str;

 if (lenstr <= 1)
 {
  if (curnode->replaceTo)
   ereport(WARNING,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("duplicate source strings, first one will be used")));
  else
  {
   curnode->replacelen = replacelen;
   curnode->replaceTo = (char *) palloc(replacelen);
   memcpy(curnode->replaceTo, replaceTo, replacelen);
  }
 }
 else
 {
  curnode->nextChar = placeChar(curnode->nextChar, str + 1, lenstr - 1,
           replaceTo, replacelen);
 }

 return node;
}
