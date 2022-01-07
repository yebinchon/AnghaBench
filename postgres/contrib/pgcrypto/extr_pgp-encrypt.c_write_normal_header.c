
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PushFilter ;


 int pushf_write (int *,int *,int) ;
 int * render_newlen (int *,int) ;

__attribute__((used)) static int
write_normal_header(PushFilter *dst, int tag, int len)
{
 uint8 hdr[8];
 uint8 *h = hdr;

 *h++ = 0xC0 | tag;
 h = render_newlen(h, len);
 return pushf_write(dst, hdr, h - hdr);
}
