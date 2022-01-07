
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;
typedef int tmpbuf ;
typedef int MBuf ;


 int mbuf_append (int *,char*,int) ;
 int px_memset (char*,int ,int) ;

__attribute__((used)) static int
copy_crlf(MBuf *dst, uint8 *data, int len, int *got_cr)
{
 uint8 *data_end = data + len;
 uint8 tmpbuf[1024];
 uint8 *tmp_end = tmpbuf + sizeof(tmpbuf);
 uint8 *p;
 int res;

 p = tmpbuf;
 if (*got_cr)
 {
  if (*data != '\n')
   *p++ = '\r';
  *got_cr = 0;
 }
 while (data < data_end)
 {
  if (*data == '\r')
  {
   if (data + 1 < data_end)
   {
    if (*(data + 1) == '\n')
     data++;
   }
   else
   {
    *got_cr = 1;
    break;
   }
  }
  *p++ = *data++;
  if (p >= tmp_end)
  {
   res = mbuf_append(dst, tmpbuf, p - tmpbuf);
   if (res < 0)
    return res;
   p = tmpbuf;
  }
 }
 if (p - tmpbuf > 0)
 {
  res = mbuf_append(dst, tmpbuf, p - tmpbuf);
  if (res < 0)
   return res;
 }
 px_memset(tmpbuf, 0, sizeof(tmpbuf));
 return 0;
}
