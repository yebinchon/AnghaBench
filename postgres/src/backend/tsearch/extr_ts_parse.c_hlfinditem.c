
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_17__ {int curwords; int lenwords; TYPE_4__* words; } ;
struct TYPE_16__ {int repeated; TYPE_1__* item; int pos; } ;
struct TYPE_13__ {int prefix; int length; scalar_t__ distance; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ qoperand; } ;
struct TYPE_14__ {int size; } ;
typedef TYPE_2__* TSQuery ;
typedef TYPE_3__ QueryItem ;
typedef TYPE_4__ HeadlineWordEntry ;
typedef TYPE_5__ HeadlineParsedText ;


 scalar_t__ GETOPERAND (TYPE_2__*) ;
 TYPE_3__* GETQUERY (TYPE_2__*) ;
 int LIMITPOS (int ) ;
 scalar_t__ QI_VAL ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 scalar_t__ repalloc (void*,int) ;
 scalar_t__ tsCompareString (scalar_t__,int ,char*,int,int ) ;

__attribute__((used)) static void
hlfinditem(HeadlineParsedText *prs, TSQuery query, int32 pos, char *buf, int buflen)
{
 int i;
 QueryItem *item = GETQUERY(query);
 HeadlineWordEntry *word;

 while (prs->curwords + query->size >= prs->lenwords)
 {
  prs->lenwords *= 2;
  prs->words = (HeadlineWordEntry *) repalloc((void *) prs->words, prs->lenwords * sizeof(HeadlineWordEntry));
 }

 word = &(prs->words[prs->curwords - 1]);
 word->pos = LIMITPOS(pos);
 for (i = 0; i < query->size; i++)
 {
  if (item->type == QI_VAL &&
   tsCompareString(GETOPERAND(query) + item->qoperand.distance, item->qoperand.length,
       buf, buflen, item->qoperand.prefix) == 0)
  {
   if (word->item)
   {
    memcpy(&(prs->words[prs->curwords]), word, sizeof(HeadlineWordEntry));
    prs->words[prs->curwords].item = &item->qoperand;
    prs->words[prs->curwords].repeated = 1;
    prs->curwords++;
   }
   else
    word->item = &item->qoperand;
  }
  item++;
 }
}
