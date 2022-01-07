
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int address_direct (char*,int*) ;
 int free (char*) ;
 char* malloc (int) ;
 char* r_str_lchr (char const*,char) ;
 int r_str_ncpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static bool address_bit(char const* addr_str, ut8* addr_out) {
 char *bitpart = malloc (strlen (addr_str) + 1);
 char *bytepart = malloc (strlen (addr_str) + 1);
 char const *separator = r_str_lchr (addr_str, '.');
 ut8 byte;
 int bit;
 bool ret = 0;





 if (!separator) {
  goto end;
 }
 r_str_ncpy (bytepart, addr_str, separator - addr_str + 1);
 bytepart[separator - addr_str + 1] = '\0';
 r_str_ncpy (bitpart, separator + 1, strlen (separator));
 if (!address_direct (bytepart, &byte)) {
  goto end;
 }
 if (1 < strlen (bitpart)
  || bitpart[0] < '0' || '7' < bitpart[0]) {
  ret = 0;
  goto end;
 }
 bit = bitpart[0] - '0';
 if (0x20 <= byte && byte < 0x30) {
  *addr_out = (byte - 0x20) * 8 + bit;
  ret = 1;
 } else if (0x80 <= byte && !(byte%8)) {
  *addr_out = byte + bit;
  ret = 1;
 }
end:
 free (bitpart); bitpart = 0;
 free (bytepart); bytepart = 0;
 return ret;
}
