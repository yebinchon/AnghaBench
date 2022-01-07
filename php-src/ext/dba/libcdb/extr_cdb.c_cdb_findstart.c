
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb {scalar_t__ loop; } ;



void cdb_findstart(struct cdb *c)
{
 c->loop = 0;
}
