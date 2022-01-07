
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int nElems; TYPE_4__* elems; scalar_t__ rawScalar; } ;
struct TYPE_14__ {TYPE_1__ array; } ;
struct TYPE_16__ {TYPE_2__ val; } ;
struct TYPE_15__ {int len; } ;
typedef TYPE_3__* StringInfo ;
typedef TYPE_4__ JsonbValue ;
typedef int JEntry ;


 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int JBE_OFFLENFLD (int) ;
 int JB_FARRAY ;
 int JB_FSCALAR ;
 int JB_OFFSET_STRIDE ;
 int JENTRY_HAS_OFF ;
 int JENTRY_ISCONTAINER ;
 int JENTRY_OFFLENMASK ;
 int JENTRY_TYPEMASK ;
 int appendToBuffer (TYPE_3__*,char*,int) ;
 int convertJsonbValue (TYPE_3__*,int*,TYPE_4__*,int) ;
 int copyToBuffer (TYPE_3__*,int,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int padBufferToInt (TYPE_3__*) ;
 int reserveFromBuffer (TYPE_3__*,int) ;

__attribute__((used)) static void
convertJsonbArray(StringInfo buffer, JEntry *pheader, JsonbValue *val, int level)
{
 int base_offset;
 int jentry_offset;
 int i;
 int totallen;
 uint32 header;
 int nElems = val->val.array.nElems;


 base_offset = buffer->len;


 padBufferToInt(buffer);





 header = nElems | JB_FARRAY;
 if (val->val.array.rawScalar)
 {
  Assert(nElems == 1);
  Assert(level == 0);
  header |= JB_FSCALAR;
 }

 appendToBuffer(buffer, (char *) &header, sizeof(uint32));


 jentry_offset = reserveFromBuffer(buffer, sizeof(JEntry) * nElems);

 totallen = 0;
 for (i = 0; i < nElems; i++)
 {
  JsonbValue *elem = &val->val.array.elems[i];
  int len;
  JEntry meta;





  convertJsonbValue(buffer, &meta, elem, level + 1);

  len = JBE_OFFLENFLD(meta);
  totallen += len;






  if (totallen > JENTRY_OFFLENMASK)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("total size of jsonb array elements exceeds the maximum of %u bytes",
       JENTRY_OFFLENMASK)));




  if ((i % JB_OFFSET_STRIDE) == 0)
   meta = (meta & JENTRY_TYPEMASK) | totallen | JENTRY_HAS_OFF;

  copyToBuffer(buffer, jentry_offset, (char *) &meta, sizeof(JEntry));
  jentry_offset += sizeof(JEntry);
 }


 totallen = buffer->len - base_offset;


 if (totallen > JENTRY_OFFLENMASK)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("total size of jsonb array elements exceeds the maximum of %u bytes",
      JENTRY_OFFLENMASK)));


 *pheader = JENTRY_ISCONTAINER | totallen;
}
