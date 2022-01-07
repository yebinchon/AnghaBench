
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
utf_charcheck(const unsigned char *c)
{
 if ((*c & 0x80) == 0)
  return 1;
 else if ((*c & 0xe0) == 0xc0)
 {

  if (((c[1] & 0xc0) == 0x80) && ((c[0] & 0x1f) > 0x01))
   return 2;
  return -1;
 }
 else if ((*c & 0xf0) == 0xe0)
 {

  if (((c[1] & 0xc0) == 0x80) &&
   (((c[0] & 0x0f) != 0x00) || ((c[1] & 0x20) == 0x20)) &&
   ((c[2] & 0xc0) == 0x80))
  {
   int z = c[0] & 0x0f;
   int yx = ((c[1] & 0x3f) << 6) | (c[0] & 0x3f);
   int lx = yx & 0x7f;


   if (((z == 0x0f) &&
     (((yx & 0xffe) == 0xffe) ||
      (((yx & 0xf80) == 0xd80) && (lx >= 0x30) && (lx <= 0x4f)))) ||
    ((z == 0x0d) && ((yx & 0xb00) == 0x800)))
    return -1;
   return 3;
  }
  return -1;
 }
 else if ((*c & 0xf8) == 0xf0)
 {
  int u = ((c[0] & 0x07) << 2) | ((c[1] & 0x30) >> 4);


  if (((c[1] & 0xc0) == 0x80) &&
   (u > 0x00) && (u <= 0x10) &&
   ((c[2] & 0xc0) == 0x80) && ((c[3] & 0xc0) == 0x80))
  {

   if (((c[1] & 0x0f) == 0x0f) && ((c[2] & 0x3f) == 0x3f) &&
    ((c[3] & 0x3e) == 0x3e))
    return -1;
   return 4;
  }
  return -1;
 }
 return -1;
}
