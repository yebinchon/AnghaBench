
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_stringlist_item (int *,char*) ;
 int dblist ;

__attribute__((used)) static void
psql_init(int argc, char **argv)
{

 add_stringlist_item(&dblist, "regression");
}
