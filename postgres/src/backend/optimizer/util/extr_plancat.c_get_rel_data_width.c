
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_8__ {int atttypmod; int atttypid; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__* Form_pg_attribute ;


 int Assert (int) ;
 int RelationGetNumberOfAttributes (TYPE_1__*) ;
 int RelationGetRelid (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (int ,int) ;
 scalar_t__ get_attavgwidth (int ,int) ;
 scalar_t__ get_typavgwidth (int ,int ) ;

int32
get_rel_data_width(Relation rel, int32 *attr_widths)
{
 int32 tuple_width = 0;
 int i;

 for (i = 1; i <= RelationGetNumberOfAttributes(rel); i++)
 {
  Form_pg_attribute att = TupleDescAttr(rel->rd_att, i - 1);
  int32 item_width;

  if (att->attisdropped)
   continue;


  if (attr_widths != ((void*)0) && attr_widths[i] > 0)
  {
   tuple_width += attr_widths[i];
   continue;
  }


  item_width = get_attavgwidth(RelationGetRelid(rel), i);
  if (item_width <= 0)
  {
   item_width = get_typavgwidth(att->atttypid, att->atttypmod);
   Assert(item_width > 0);
  }
  if (attr_widths != ((void*)0))
   attr_widths[i] = item_width;
  tuple_width += item_width;
 }

 return tuple_width;
}
