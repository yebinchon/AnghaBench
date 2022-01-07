
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAN13_index ;
 int EAN13_range ;
 int ERROR ;
 int ISBN_index ;
 int ISBN_range ;
 int ISMN_index ;
 int ISMN_range ;
 scalar_t__ ISN_DEBUG ;
 int ISSN_index ;
 int ISSN_range ;
 int UPC_index ;
 int UPC_range ;
 int check_table (int ,int ) ;
 int elog (int ,char*) ;

void
_PG_init(void)
{
 if (ISN_DEBUG)
 {
  if (!check_table(EAN13_range, EAN13_index))
   elog(ERROR, "EAN13 failed check");
  if (!check_table(ISBN_range, ISBN_index))
   elog(ERROR, "ISBN failed check");
  if (!check_table(ISMN_range, ISMN_index))
   elog(ERROR, "ISMN failed check");
  if (!check_table(ISSN_range, ISSN_index))
   elog(ERROR, "ISSN failed check");
  if (!check_table(UPC_range, UPC_index))
   elog(ERROR, "UPC failed check");
 }
}
