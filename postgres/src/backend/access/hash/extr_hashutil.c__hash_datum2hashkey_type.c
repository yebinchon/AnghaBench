
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int * rd_indcollation; int * rd_opfamily; } ;
typedef TYPE_1__* Relation ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int Datum ;


 int DatumGetUInt32 (int ) ;
 int ERROR ;
 int HASHSTANDARD_PROC ;
 int OidFunctionCall1Coll (int ,int ,int ) ;
 int RegProcedureIsValid (int ) ;
 int RelationGetRelationName (TYPE_1__*) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int get_opfamily_proc (int ,int ,int ,int ) ;

uint32
_hash_datum2hashkey_type(Relation rel, Datum key, Oid keytype)
{
 RegProcedure hash_proc;
 Oid collation;


 hash_proc = get_opfamily_proc(rel->rd_opfamily[0],
          keytype,
          keytype,
          HASHSTANDARD_PROC);
 if (!RegProcedureIsValid(hash_proc))
  elog(ERROR, "missing support function %d(%u,%u) for index \"%s\"",
    HASHSTANDARD_PROC, keytype, keytype,
    RelationGetRelationName(rel));
 collation = rel->rd_indcollation[0];

 return DatumGetUInt32(OidFunctionCall1Coll(hash_proc, collation, key));
}
