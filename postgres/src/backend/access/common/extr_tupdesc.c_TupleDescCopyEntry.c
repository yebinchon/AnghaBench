
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int attnum; int attcacheoff; int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; } ;
struct TYPE_10__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int AssertArg (int) ;
 int PointerIsValid (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int ) ;

void
TupleDescCopyEntry(TupleDesc dst, AttrNumber dstAttno,
       TupleDesc src, AttrNumber srcAttno)
{
 Form_pg_attribute dstAtt = TupleDescAttr(dst, dstAttno - 1);
 Form_pg_attribute srcAtt = TupleDescAttr(src, srcAttno - 1);




 AssertArg(PointerIsValid(src));
 AssertArg(PointerIsValid(dst));
 AssertArg(srcAttno >= 1);
 AssertArg(srcAttno <= src->natts);
 AssertArg(dstAttno >= 1);
 AssertArg(dstAttno <= dst->natts);

 memcpy(dstAtt, srcAtt, ATTRIBUTE_FIXED_PART_SIZE);
 dstAtt->attnum = dstAttno;
 dstAtt->attcacheoff = -1;


 dstAtt->attnotnull = 0;
 dstAtt->atthasdef = 0;
 dstAtt->atthasmissing = 0;
 dstAtt->attidentity = '\0';
 dstAtt->attgenerated = '\0';
}
