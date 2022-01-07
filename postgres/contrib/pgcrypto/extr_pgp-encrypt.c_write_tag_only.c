
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PushFilter ;


 int pushf_write (int *,int*,int) ;

__attribute__((used)) static int
write_tag_only(PushFilter *dst, int tag)
{
 uint8 hdr = 0xC0 | tag;

 return pushf_write(dst, &hdr, 1);
}
