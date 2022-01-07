
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct mac_font_mapping {scalar_t__ encoding_id; scalar_t__ language_id; char const* code_page; } ;


 size_t mac_code_count ;
 struct mac_font_mapping* mac_codes ;

__attribute__((used)) static const char *get_mac_code(uint16_t encoding_id, uint16_t language_id)
{
 for (size_t i = 0; i < mac_code_count; i++) {
  const struct mac_font_mapping *mac_code = &mac_codes[i];

  if (mac_code->encoding_id == encoding_id &&
      mac_code->language_id == language_id)
   return mac_code->code_page;
 }

 return ((void*)0);
}
