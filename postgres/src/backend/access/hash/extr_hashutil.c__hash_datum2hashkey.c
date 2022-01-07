
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int * rd_indcollation; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int DatumGetUInt32 (int ) ;
 int FunctionCall1Coll (int *,int ,int ) ;
 int HASHSTANDARD_PROC ;
 int * index_getprocinfo (TYPE_1__*,int,int ) ;

uint32
_hash_datum2hashkey(Relation rel, Datum key)
{
 FmgrInfo *procinfo;
 Oid collation;


 procinfo = index_getprocinfo(rel, 1, HASHSTANDARD_PROC);
 collation = rel->rd_indcollation[0];

 return DatumGetUInt32(FunctionCall1Coll(procinfo, collation, key));
}
