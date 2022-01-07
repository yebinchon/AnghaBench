
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int attisdropped; int attname; } ;
struct TYPE_6__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__* Form_pg_attribute ;


 int InvalidAttrNumber ;
 int RelationGetNumberOfAttributes (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (int ,int) ;
 scalar_t__ namestrcmp (int *,char const*) ;
 int specialAttNum (char const*) ;

int
attnameAttNum(Relation rd, const char *attname, bool sysColOK)
{
 int i;

 for (i = 0; i < RelationGetNumberOfAttributes(rd); i++)
 {
  Form_pg_attribute att = TupleDescAttr(rd->rd_att, i);

  if (namestrcmp(&(att->attname), attname) == 0 && !att->attisdropped)
   return i + 1;
 }

 if (sysColOK)
 {
  if ((i = specialAttNum(attname)) != InvalidAttrNumber)
   return i;
 }


 return InvalidAttrNumber;
}
