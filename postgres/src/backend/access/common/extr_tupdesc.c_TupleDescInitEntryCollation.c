
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attcollation; } ;
struct TYPE_6__ {int natts; } ;
typedef int Oid ;
typedef int AttrNumber ;


 int AssertArg (int) ;
 int PointerIsValid (TYPE_1__*) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;

void
TupleDescInitEntryCollation(TupleDesc desc,
       AttrNumber attributeNumber,
       Oid collationid)
{



 AssertArg(PointerIsValid(desc));
 AssertArg(attributeNumber >= 1);
 AssertArg(attributeNumber <= desc->natts);

 TupleDescAttr(desc, attributeNumber - 1)->attcollation = collationid;
}
