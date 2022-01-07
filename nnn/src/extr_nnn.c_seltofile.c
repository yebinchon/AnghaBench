
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef scalar_t__ ssize_t ;


 char* pselbuf ;
 size_t selbufpos ;
 size_t strlen (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static size_t seltofile(int fd, uint *pcount)
{
 uint lastpos, count = 0;
 char *pbuf = pselbuf;
 size_t pos = 0, len;
 ssize_t r;

 if (pcount)
  *pcount = 0;

 if (!selbufpos)
  return 0;

 lastpos = selbufpos - 1;

 while (pos <= lastpos) {
  len = strlen(pbuf);
  pos += len;

  r = write(fd, pbuf, len);
  if (r != (ssize_t)len)
   return pos;

  if (pos <= lastpos) {
   if (write(fd, "\n", 1) != 1)
    return pos;
   pbuf += len + 1;
  }
  ++pos;
  ++count;
 }

 if (pcount)
  *pcount = count;

 return pos;
}
