
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ecpg_alloc (int,int) ;
 int ecpg_free (char*) ;
 size_t ecpg_hex_enc_len (int) ;
 int ecpg_hex_encode (char*,int,char*) ;
 int ecpg_log (char*,int,int,char*) ;

__attribute__((used)) static void
print_param_value(char *value, int len, int is_binary, int lineno, int nth)
{
 char *value_s;
 bool malloced = 0;

 if (value == ((void*)0))
  value_s = "null";
 else if (!is_binary)
  value_s = value;
 else
 {
  value_s = ecpg_alloc(ecpg_hex_enc_len(len) + 1, lineno);
  if (value_s != ((void*)0))
  {
   ecpg_hex_encode(value, len, value_s);
   value_s[ecpg_hex_enc_len(len)] = '\0';
   malloced = 1;
  }
  else
   value_s = "no memory for logging of parameter";
 }

 ecpg_log("ecpg_free_params on line %d: parameter %d = %s\n",
    lineno, nth, value_s);

 if (malloced)
  ecpg_free(value_s);
}
