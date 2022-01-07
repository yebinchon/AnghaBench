
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _xtotals (char*,char*,int,int,int) ;
 int link_slabs () ;
 int printf (char*) ;
 int rename_slabs () ;
 int totals () ;

__attribute__((used)) static void xtotals(void)
{
 char *heading, *underline;

 totals();

 link_slabs();
 rename_slabs();

 heading = "\nSlabs sorted by size\n";
 underline = "--------------------\n";
 _xtotals(heading, underline, 0, 1, 0);

 heading = "\nSlabs sorted by loss\n";
 underline = "--------------------\n";
 _xtotals(heading, underline, 1, 0, 0);

 heading = "\nSlabs sorted by number of partial slabs\n";
 underline = "---------------------------------------\n";
 _xtotals(heading, underline, 0, 0, 1);

 printf("\n");
}
