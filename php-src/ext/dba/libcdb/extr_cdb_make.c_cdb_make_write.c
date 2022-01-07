
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
struct cdb_make {int fp; } ;


 scalar_t__ php_stream_write (int ,char*,scalar_t__) ;

__attribute__((used)) static int cdb_make_write(struct cdb_make *c, char *buf, uint32 sz) {
 return php_stream_write(c->fp, buf, sz) == sz ? 0 : -1;
}
