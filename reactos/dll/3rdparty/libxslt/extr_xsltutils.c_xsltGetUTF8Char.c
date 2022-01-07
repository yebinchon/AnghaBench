
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
xsltGetUTF8Char(const unsigned char *utf, int *len) {
    unsigned int c;

    if (utf == ((void*)0))
 goto error;
    if (len == ((void*)0))
 goto error;
    if (*len < 1)
 goto error;

    c = utf[0];
    if (c & 0x80) {
 if (*len < 2)
     goto error;
 if ((utf[1] & 0xc0) != 0x80)
     goto error;
 if ((c & 0xe0) == 0xe0) {
     if (*len < 3)
  goto error;
     if ((utf[2] & 0xc0) != 0x80)
  goto error;
     if ((c & 0xf0) == 0xf0) {
  if (*len < 4)
      goto error;
  if ((c & 0xf8) != 0xf0 || (utf[3] & 0xc0) != 0x80)
      goto error;
  *len = 4;

  c = (utf[0] & 0x7) << 18;
  c |= (utf[1] & 0x3f) << 12;
  c |= (utf[2] & 0x3f) << 6;
  c |= utf[3] & 0x3f;
     } else {

  *len = 3;
  c = (utf[0] & 0xf) << 12;
  c |= (utf[1] & 0x3f) << 6;
  c |= utf[2] & 0x3f;
     }
 } else {

     *len = 2;
     c = (utf[0] & 0x1f) << 6;
     c |= utf[1] & 0x3f;
 }
    } else {

 *len = 1;
    }
    return(c);

error:
    if (len != ((void*)0))
 *len = 0;
    return(-1);
}
