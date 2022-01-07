
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int TT_MAC_LANGID_ANY ;




 char* get_mac_code (int,int) ;
 int iso_code_count ;
 char const** iso_codes ;
 int ms_code_count ;
 char const** ms_codes ;

__attribute__((used)) static const char *get_code_page_for_font(uint16_t platform_id,
       uint16_t encoding_id,
       uint16_t language_id)
{
 const char *ret;

 switch (platform_id) {
 case 131:
  return "UTF-16BE";
 case 129:
  ret = get_mac_code(encoding_id, language_id);
  if (!ret)
   ret = get_mac_code(encoding_id, TT_MAC_LANGID_ANY);
  return ret;
 case 130:
  if (encoding_id < iso_code_count)
   return iso_codes[encoding_id];
  break;
 case 128:
  if (encoding_id < ms_code_count)
   return ms_codes[encoding_id];
  break;
 }

 return ((void*)0);
}
