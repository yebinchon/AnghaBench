
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb {int dummy; } ;


 int cdb_findnext (struct cdb*,char*,unsigned int) ;
 int cdb_findstart (struct cdb*) ;

int cdb_find(struct cdb *c, char *key, unsigned int len)
{
 cdb_findstart(c);
 return cdb_findnext(c, key, len);
}
