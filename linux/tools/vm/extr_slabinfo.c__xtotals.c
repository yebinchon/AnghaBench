
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ line ;
 int output_slabs () ;
 int printf (char*,char*,char*) ;
 int sort_loss ;
 int sort_partial ;
 int sort_size ;
 int sort_slabs () ;

__attribute__((used)) static void _xtotals(char *heading, char *underline,
       int loss, int size, int partial)
{
 printf("%s%s", heading, underline);
 line = 0;
 sort_loss = loss;
 sort_size = size;
 sort_partial = partial;
 sort_slabs();
 output_slabs();
}
