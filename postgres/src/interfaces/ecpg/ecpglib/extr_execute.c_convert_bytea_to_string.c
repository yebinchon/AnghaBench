
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ecpg_alloc (int,int) ;
 int ecpg_hex_enc_len (int) ;
 int ecpg_hex_encode (char*,int,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
convert_bytea_to_string(char *from_data, int from_len, int lineno)
{
 char *to_data;
 int to_len = ecpg_hex_enc_len(from_len) + 4 + 1;


 to_data = ecpg_alloc(to_len, lineno);
 if (!to_data)
  return ((void*)0);

 strcpy(to_data, "'\\x");
 ecpg_hex_encode(from_data, from_len, to_data + 3);
 strcpy(to_data + 3 + ecpg_hex_enc_len(from_len), "\'");

 return to_data;
}
