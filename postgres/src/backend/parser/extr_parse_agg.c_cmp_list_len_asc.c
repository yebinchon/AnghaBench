
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ListCell ;
typedef int List ;


 scalar_t__ lfirst (int const*) ;
 int list_length (int const*) ;

__attribute__((used)) static int
cmp_list_len_asc(const ListCell *a, const ListCell *b)
{
 int la = list_length((const List *) lfirst(a));
 int lb = list_length((const List *) lfirst(b));

 return (la > lb) ? 1 : (la == lb) ? 0 : -1;
}
