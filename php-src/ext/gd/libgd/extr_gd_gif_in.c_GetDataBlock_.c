
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int ReadOK (int *,unsigned char*,unsigned char) ;

__attribute__((used)) static int
GetDataBlock_(gdIOCtx *fd, unsigned char *buf, int *ZeroDataBlockP)
{
 unsigned char count;

 if (! ReadOK(fd,&count,1)) {
  return -1;
 }

 *ZeroDataBlockP = count == 0;

 if ((count != 0) && (! ReadOK(fd, buf, count))) {
  return -1;
 }

 return count;
}
