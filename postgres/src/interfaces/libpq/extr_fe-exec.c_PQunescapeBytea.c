
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISFIRSTOCTDIGIT (unsigned char const) ;
 int ISOCTDIGIT (unsigned char const) ;
 int OCTVAL (unsigned char const) ;
 int free (unsigned char*) ;
 char get_hex (int ) ;
 scalar_t__ malloc (size_t) ;
 unsigned char* realloc (unsigned char*,size_t) ;
 size_t strlen (char const*) ;

unsigned char *
PQunescapeBytea(const unsigned char *strtext, size_t *retbuflen)
{
 size_t strtextlen,
    buflen;
 unsigned char *buffer,
      *tmpbuf;
 size_t i,
    j;

 if (strtext == ((void*)0))
  return ((void*)0);

 strtextlen = strlen((const char *) strtext);

 if (strtext[0] == '\\' && strtext[1] == 'x')
 {
  const unsigned char *s;
  unsigned char *p;

  buflen = (strtextlen - 2) / 2;

  buffer = (unsigned char *) malloc(buflen > 0 ? buflen : 1);
  if (buffer == ((void*)0))
   return ((void*)0);

  s = strtext + 2;
  p = buffer;
  while (*s)
  {
   char v1,
      v2;





   v1 = get_hex(*s++);
   if (!*s || v1 == (char) -1)
    continue;
   v2 = get_hex(*s++);
   if (v2 != (char) -1)
    *p++ = (v1 << 4) | v2;
  }

  buflen = p - buffer;
 }
 else
 {




  buffer = (unsigned char *) malloc(strtextlen + 1);
  if (buffer == ((void*)0))
   return ((void*)0);

  for (i = j = 0; i < strtextlen;)
  {
   switch (strtext[i])
   {
    case '\\':
     i++;
     if (strtext[i] == '\\')
      buffer[j++] = strtext[i++];
     else
     {
      if ((ISFIRSTOCTDIGIT(strtext[i])) &&
       (ISOCTDIGIT(strtext[i + 1])) &&
       (ISOCTDIGIT(strtext[i + 2])))
      {
       int byte;

       byte = OCTVAL(strtext[i++]);
       byte = (byte << 3) + OCTVAL(strtext[i++]);
       byte = (byte << 3) + OCTVAL(strtext[i++]);
       buffer[j++] = byte;
      }
     }
     break;

    default:
     buffer[j++] = strtext[i++];
     break;
   }
  }
  buflen = j;
 }



 tmpbuf = realloc(buffer, buflen + 1);


 if (!tmpbuf)
 {
  free(buffer);
  return ((void*)0);
 }

 *retbuflen = buflen;
 return tmpbuf;
}
