
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_18__ {int value; int key; } ;
struct TYPE_14__ {int nPairs; TYPE_5__* pairs; } ;
struct TYPE_15__ {TYPE_1__ object; } ;
struct TYPE_17__ {TYPE_2__ val; } ;
struct TYPE_16__ {int len; } ;
typedef TYPE_3__* StringInfo ;
typedef TYPE_4__ JsonbValue ;
typedef TYPE_5__ JsonbPair ;
typedef int JEntry ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int JBE_OFFLENFLD (int) ;
 int JB_FOBJECT ;
 int JB_OFFSET_STRIDE ;
 int JENTRY_HAS_OFF ;
 int JENTRY_ISCONTAINER ;
 int JENTRY_OFFLENMASK ;
 int JENTRY_TYPEMASK ;
 int appendToBuffer (TYPE_3__*,char*,int) ;
 int convertJsonbScalar (TYPE_3__*,int*,int *) ;
 int convertJsonbValue (TYPE_3__*,int*,int *,int) ;
 int copyToBuffer (TYPE_3__*,int,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int padBufferToInt (TYPE_3__*) ;
 int reserveFromBuffer (TYPE_3__*,int) ;

__attribute__((used)) static void
convertJsonbObject(StringInfo buffer, JEntry *pheader, JsonbValue *val, int level)
{
 int base_offset;
 int jentry_offset;
 int i;
 int totallen;
 uint32 header;
 int nPairs = val->val.object.nPairs;


 base_offset = buffer->len;


 padBufferToInt(buffer);





 header = nPairs | JB_FOBJECT;
 appendToBuffer(buffer, (char *) &header, sizeof(uint32));


 jentry_offset = reserveFromBuffer(buffer, sizeof(JEntry) * nPairs * 2);





 totallen = 0;
 for (i = 0; i < nPairs; i++)
 {
  JsonbPair *pair = &val->val.object.pairs[i];
  int len;
  JEntry meta;





  convertJsonbScalar(buffer, &meta, &pair->key);

  len = JBE_OFFLENFLD(meta);
  totallen += len;






  if (totallen > JENTRY_OFFLENMASK)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("total size of jsonb object elements exceeds the maximum of %u bytes",
       JENTRY_OFFLENMASK)));




  if ((i % JB_OFFSET_STRIDE) == 0)
   meta = (meta & JENTRY_TYPEMASK) | totallen | JENTRY_HAS_OFF;

  copyToBuffer(buffer, jentry_offset, (char *) &meta, sizeof(JEntry));
  jentry_offset += sizeof(JEntry);
 }
 for (i = 0; i < nPairs; i++)
 {
  JsonbPair *pair = &val->val.object.pairs[i];
  int len;
  JEntry meta;





  convertJsonbValue(buffer, &meta, &pair->value, level + 1);

  len = JBE_OFFLENFLD(meta);
  totallen += len;






  if (totallen > JENTRY_OFFLENMASK)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("total size of jsonb object elements exceeds the maximum of %u bytes",
       JENTRY_OFFLENMASK)));




  if (((i + nPairs) % JB_OFFSET_STRIDE) == 0)
   meta = (meta & JENTRY_TYPEMASK) | totallen | JENTRY_HAS_OFF;

  copyToBuffer(buffer, jentry_offset, (char *) &meta, sizeof(JEntry));
  jentry_offset += sizeof(JEntry);
 }


 totallen = buffer->len - base_offset;


 if (totallen > JENTRY_OFFLENMASK)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("total size of jsonb object elements exceeds the maximum of %u bytes",
      JENTRY_OFFLENMASK)));


 *pheader = JENTRY_ISCONTAINER | totallen;
}
