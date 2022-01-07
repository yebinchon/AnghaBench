
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
struct cdb_make {scalar_t__ pos; } ;


 int ENOMEM ;
 int errno ;

__attribute__((used)) static int cdb_posplus(struct cdb_make *c, uint32 len)
{
 uint32 newpos = c->pos + len;
 if (newpos < len) {
  errno = ENOMEM;
  return -1;
 }
 c->pos = newpos;
 return 0;
}
