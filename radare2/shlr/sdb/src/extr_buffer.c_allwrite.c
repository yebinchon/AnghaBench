
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
typedef scalar_t__ (* BufferOp ) (int,char const*,scalar_t__) ;



__attribute__((used)) static int allwrite(BufferOp op, int fd, const char *buf, ut32 len) {
 ut32 w;
 while (len > 0) {
  w = op (fd, buf, len);
  if (w != len) {
   return 0;
  }
  buf += w;
  len -= w;
 }
 return 1;
}
