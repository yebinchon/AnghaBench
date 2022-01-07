
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
struct cdb {int fp; } ;


 scalar_t__ EINTR ;
 scalar_t__ EPROTO ;
 int SEEK_SET ;
 scalar_t__ errno ;
 int php_stream_read (int ,char*,unsigned int) ;
 int php_stream_seek (int ,int ,int ) ;

int cdb_read(struct cdb *c, char *buf, unsigned int len, uint32 pos)
{
 if (php_stream_seek(c->fp, pos, SEEK_SET) == -1) {
  errno = EPROTO;
  return -1;
 }
 while (len > 0) {
  int r;
  do {
   r = php_stream_read(c->fp, buf, len);
  } while ((r == -1) && (errno == EINTR));
  if (r == -1)
   return -1;
  if (r == 0) {
   errno = EPROTO;
   return -1;
  }
  buf += r;
  len -= r;
 }
 return 0;
}
