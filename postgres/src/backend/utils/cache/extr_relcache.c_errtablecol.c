
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_6__ {int attname; } ;
struct TYPE_5__ {int natts; } ;
typedef int Relation ;


 char* NameStr (int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int RelationGetRelid (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int errtablecolname (int ,char const*) ;
 char* get_attname (int ,int,int) ;

int
errtablecol(Relation rel, int attnum)
{
 TupleDesc reldesc = RelationGetDescr(rel);
 const char *colname;


 if (attnum > 0 && attnum <= reldesc->natts)
  colname = NameStr(TupleDescAttr(reldesc, attnum - 1)->attname);
 else
  colname = get_attname(RelationGetRelid(rel), attnum, 0);

 return errtablecolname(rel, colname);
}
