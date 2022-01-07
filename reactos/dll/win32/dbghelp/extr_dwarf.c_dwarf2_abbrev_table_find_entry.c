
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse_array {int dummy; } ;
typedef int dwarf2_abbrev_entry_t ;


 int assert (int) ;
 int * sparse_array_find (struct sparse_array const*,unsigned long) ;

__attribute__((used)) static dwarf2_abbrev_entry_t*
dwarf2_abbrev_table_find_entry(const struct sparse_array* abbrev_table,
                               unsigned long entry_code)
{
    assert( ((void*)0) != abbrev_table );
    return sparse_array_find(abbrev_table, entry_code);
}
