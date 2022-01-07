
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb {int * fp; } ;
typedef int php_stream ;


 int cdb_findstart (struct cdb*) ;
 int cdb_free (struct cdb*) ;

void cdb_init(struct cdb *c, php_stream *fp)
{
 cdb_free(c);
 cdb_findstart(c);
 c->fp = fp;
}
