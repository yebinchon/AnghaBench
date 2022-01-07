
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32 ;
struct cdb {int dummy; } ;
typedef int buf ;


 int cdb_read (struct cdb*,char*,unsigned int,unsigned int) ;
 scalar_t__ memcmp (char*,char*,unsigned int) ;

__attribute__((used)) static int cdb_match(struct cdb *c, char *key, unsigned int len, uint32 pos)
{
 char buf[32];
 unsigned int n;

 while (len > 0) {
  n = sizeof(buf);
  if (n > len)
   n = len;
  if (cdb_read(c, buf, n, pos) == -1)
   return -1;
  if (memcmp(buf, key, n))
   return 0;
  pos += n;
  key += n;
  len -= n;
 }
 return 1;
}
