
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ ginxlogVacuumDataLeafPage ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_2__ ginxlogSplit ;
typedef int ginxlogRecompressDataLeaf ;
struct TYPE_10__ {int isDelete; } ;
typedef TYPE_3__ ginxlogInsertEntry ;
struct TYPE_14__ {int key; } ;
struct TYPE_11__ {TYPE_7__ newitem; } ;
typedef TYPE_4__ ginxlogInsertDataInternal ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_5__ ginxlogInsert ;
struct TYPE_13__ {char ndeleted; } ;
typedef TYPE_6__ ginxlogDeleteListPages ;
typedef int XLogReaderState ;
typedef int StringInfo ;
typedef int BlockNumber ;
typedef int BlockIdData ;
typedef int BlockId ;


 int BlockIdGetBlockNumber (int ) ;
 int GIN_INSERT_ISDATA ;
 int GIN_INSERT_ISLEAF ;
 int GIN_SPLIT_ROOT ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int PostingItemGetBlockNumber (TYPE_7__*) ;
 int XLR_INFO_MASK ;
 int XLogRecBlockImageApply (int *,int ) ;
 char* XLogRecGetBlockData (int *,int ,int *) ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int XLogRecHasBlockImage (int *,int ) ;
 int appendStringInfo (int ,char*,char,...) ;
 int appendStringInfoString (int ,char*) ;
 int desc_recompress_leaf (int ,int *) ;

void
gin_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 136:

   break;
  case 133:
   {
    ginxlogInsert *xlrec = (ginxlogInsert *) rec;

    appendStringInfo(buf, "isdata: %c isleaf: %c",
         (xlrec->flags & GIN_INSERT_ISDATA) ? 'T' : 'F',
         (xlrec->flags & GIN_INSERT_ISLEAF) ? 'T' : 'F');
    if (!(xlrec->flags & GIN_INSERT_ISLEAF))
    {
     char *payload = rec + sizeof(ginxlogInsert);
     BlockNumber leftChildBlkno;
     BlockNumber rightChildBlkno;

     leftChildBlkno = BlockIdGetBlockNumber((BlockId) payload);
     payload += sizeof(BlockIdData);
     rightChildBlkno = BlockIdGetBlockNumber((BlockId) payload);
     payload += sizeof(BlockNumber);
     appendStringInfo(buf, " children: %u/%u",
          leftChildBlkno, rightChildBlkno);
    }
    if (XLogRecHasBlockImage(record, 0))
    {
     if (XLogRecBlockImageApply(record, 0))
      appendStringInfoString(buf, " (full page image)");
     else
      appendStringInfoString(buf, " (full page image, for WAL verification)");
    }
    else
    {
     char *payload = XLogRecGetBlockData(record, 0, ((void*)0));

     if (!(xlrec->flags & GIN_INSERT_ISDATA))
      appendStringInfo(buf, " isdelete: %c",
           (((ginxlogInsertEntry *) payload)->isDelete) ? 'T' : 'F');
     else if (xlrec->flags & GIN_INSERT_ISLEAF)
      desc_recompress_leaf(buf, (ginxlogRecompressDataLeaf *) payload);
     else
     {
      ginxlogInsertDataInternal *insertData =
      (ginxlogInsertDataInternal *) payload;

      appendStringInfo(buf, " pitem: %u-%u/%u",
           PostingItemGetBlockNumber(&insertData->newitem),
           ItemPointerGetBlockNumber(&insertData->newitem.key),
           ItemPointerGetOffsetNumber(&insertData->newitem.key));
     }
    }
   }
   break;
  case 131:
   {
    ginxlogSplit *xlrec = (ginxlogSplit *) rec;

    appendStringInfo(buf, "isrootsplit: %c",
         (((ginxlogSplit *) rec)->flags & GIN_SPLIT_ROOT) ? 'T' : 'F');
    appendStringInfo(buf, " isdata: %c isleaf: %c",
         (xlrec->flags & GIN_INSERT_ISDATA) ? 'T' : 'F',
         (xlrec->flags & GIN_INSERT_ISLEAF) ? 'T' : 'F');
   }
   break;
  case 128:

   break;
  case 129:
   {
    if (XLogRecHasBlockImage(record, 0))
    {
     if (XLogRecBlockImageApply(record, 0))
      appendStringInfoString(buf, " (full page image)");
     else
      appendStringInfoString(buf, " (full page image, for WAL verification)");
    }
    else
    {
     ginxlogVacuumDataLeafPage *xlrec =
     (ginxlogVacuumDataLeafPage *) XLogRecGetBlockData(record, 0, ((void*)0));

     desc_recompress_leaf(buf, &xlrec->data);
    }
   }
   break;
  case 134:

   break;
  case 130:

   break;
  case 132:

   break;
  case 135:
   appendStringInfo(buf, "ndeleted: %d",
        ((ginxlogDeleteListPages *) rec)->ndeleted);
   break;
 }
}
