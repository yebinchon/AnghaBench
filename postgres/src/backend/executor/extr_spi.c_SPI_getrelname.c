
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int RelationGetRelationName (int ) ;
 char* pstrdup (int ) ;

char *
SPI_getrelname(Relation rel)
{
 return pstrdup(RelationGetRelationName(rel));
}
