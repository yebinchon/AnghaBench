
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {char** attnames; int natts; int * attkeys; scalar_t__* atttyps; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepRelation ;
typedef int Bitmapset ;


 int LOGICALREP_IS_REPLICA_IDENTITY ;
 int * bms_add_member (int *,int) ;
 void* palloc (int) ;
 int pq_getmsgbyte (int ) ;
 int pq_getmsgint (int ,int) ;
 int pq_getmsgstring (int ) ;
 char* pstrdup (int ) ;

__attribute__((used)) static void
logicalrep_read_attrs(StringInfo in, LogicalRepRelation *rel)
{
 int i;
 int natts;
 char **attnames;
 Oid *atttyps;
 Bitmapset *attkeys = ((void*)0);

 natts = pq_getmsgint(in, 2);
 attnames = palloc(natts * sizeof(char *));
 atttyps = palloc(natts * sizeof(Oid));


 for (i = 0; i < natts; i++)
 {
  uint8 flags;


  flags = pq_getmsgbyte(in);
  if (flags & LOGICALREP_IS_REPLICA_IDENTITY)
   attkeys = bms_add_member(attkeys, i);


  attnames[i] = pstrdup(pq_getmsgstring(in));


  atttyps[i] = (Oid) pq_getmsgint(in, 4);


  (void) pq_getmsgint(in, 4);
 }

 rel->attnames = attnames;
 rel->atttyps = atttyps;
 rel->attkeys = attkeys;
 rel->natts = natts;
}
