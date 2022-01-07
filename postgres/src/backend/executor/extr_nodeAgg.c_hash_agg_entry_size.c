
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleHashEntryData ;
typedef int Size ;
typedef int AggStatePerGroupData ;


 int MAXALIGN (int) ;

Size
hash_agg_entry_size(int numAggs)
{
 Size entrysize;


 entrysize = sizeof(TupleHashEntryData) +
  numAggs * sizeof(AggStatePerGroupData);
 entrysize = MAXALIGN(entrysize);

 return entrysize;
}
