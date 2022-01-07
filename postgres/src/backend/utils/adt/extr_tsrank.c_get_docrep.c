
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;


typedef size_t int32 ;
typedef scalar_t__ WordEntryPos ;
struct TYPE_24__ {scalar_t__ haspos; } ;
typedef TYPE_4__ WordEntry ;
struct TYPE_22__ {int nitem; TYPE_7__** items; } ;
struct TYPE_21__ {scalar_t__ entry; TYPE_7__* item; } ;
struct TYPE_23__ {TYPE_2__ query; TYPE_1__ map; } ;
struct TYPE_28__ {scalar_t__ pos; TYPE_3__ data; } ;
struct TYPE_26__ {int weight; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_6__ qoperand; } ;
struct TYPE_25__ {TYPE_14__* query; } ;
struct TYPE_20__ {int size; } ;
typedef int TSVector ;
typedef TYPE_5__ QueryRepresentation ;
typedef TYPE_6__ QueryOperand ;
typedef TYPE_7__ QueryItem ;
typedef TYPE_8__ DocRepresentation ;


 TYPE_7__* GETQUERY (TYPE_14__*) ;
 size_t POSDATALEN (int ,TYPE_4__*) ;
 scalar_t__* POSDATAPTR (int ,TYPE_4__*) ;
 scalar_t__ QI_VAL ;
 int WEP_GETWEIGHT (scalar_t__) ;
 int compareDocR ;
 TYPE_4__* find_wordentry (int ,TYPE_14__*,TYPE_6__*,size_t*) ;
 void* palloc (int) ;
 int pfree (TYPE_8__*) ;
 int qsort (void*,int,int,int ) ;
 scalar_t__ repalloc (TYPE_8__*,int) ;

__attribute__((used)) static DocRepresentation *
get_docrep(TSVector txt, QueryRepresentation *qr, int *doclen)
{
 QueryItem *item = GETQUERY(qr->query);
 WordEntry *entry,
      *firstentry;
 WordEntryPos *post;
 int32 dimt,
    j,
    i,
    nitem;
 int len = qr->query->size * 4,
    cur = 0;
 DocRepresentation *doc;

 doc = (DocRepresentation *) palloc(sizeof(DocRepresentation) * len);





 for (i = 0; i < qr->query->size; i++)
 {
  QueryOperand *curoperand;

  if (item[i].type != QI_VAL)
   continue;

  curoperand = &item[i].qoperand;

  firstentry = entry = find_wordentry(txt, qr->query, curoperand, &nitem);
  if (!entry)
   continue;


  while (entry - firstentry < nitem)
  {
   if (entry->haspos)
   {
    dimt = POSDATALEN(txt, entry);
    post = POSDATAPTR(txt, entry);
   }
   else
   {

    entry++;
    continue;
   }

   while (cur + dimt >= len)
   {
    len *= 2;
    doc = (DocRepresentation *) repalloc(doc, sizeof(DocRepresentation) * len);
   }


   for (j = 0; j < dimt; j++)
   {
    if (curoperand->weight == 0 ||
     curoperand->weight & (1 << WEP_GETWEIGHT(post[j])))
    {
     doc[cur].pos = post[j];
     doc[cur].data.map.entry = entry;
     doc[cur].data.map.item = (QueryItem *) curoperand;
     cur++;
    }
   }

   entry++;
  }
 }

 if (cur > 0)
 {
  DocRepresentation *rptr = doc + 1,
       *wptr = doc,
     storage;




  qsort((void *) doc, cur, sizeof(DocRepresentation), compareDocR);




  storage.pos = doc->pos;
  storage.data.query.items = palloc(sizeof(QueryItem *) * qr->query->size);
  storage.data.query.items[0] = doc->data.map.item;
  storage.data.query.nitem = 1;

  while (rptr - doc < cur)
  {
   if (rptr->pos == (rptr - 1)->pos &&
    rptr->data.map.entry == (rptr - 1)->data.map.entry)
   {
    storage.data.query.items[storage.data.query.nitem] = rptr->data.map.item;
    storage.data.query.nitem++;
   }
   else
   {
    *wptr = storage;
    wptr++;
    storage.pos = rptr->pos;
    storage.data.query.items = palloc(sizeof(QueryItem *) * qr->query->size);
    storage.data.query.items[0] = rptr->data.map.item;
    storage.data.query.nitem = 1;
   }

   rptr++;
  }

  *wptr = storage;
  wptr++;

  *doclen = wptr - doc;
  return doc;
 }

 pfree(doc);
 return ((void*)0);
}
