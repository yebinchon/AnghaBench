
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_uint8 ;


 scalar_t__ stbtt_tag (int const*,char*) ;
 scalar_t__ stbtt_tag4 (int const*,char,int,int ,int ) ;

__attribute__((used)) static int stbtt__isfont(const stbtt_uint8 *font)
{

   if (stbtt_tag4(font, '1',0,0,0)) return 1;
   if (stbtt_tag(font, "typ1")) return 1;
   if (stbtt_tag(font, "OTTO")) return 1;
   if (stbtt_tag4(font, 0,1,0,0)) return 1;
   return 0;
}
