
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int RelationGetNamespace (int ) ;
 char* get_namespace_name (int ) ;

char *
SPI_getnspname(Relation rel)
{
 return get_namespace_name(RelationGetNamespace(rel));
}
