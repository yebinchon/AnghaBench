
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int st32 ;


 scalar_t__ C55PLUS_DEBUG ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int get_ins_len (int ) ;
 int get_ins_part (int,int) ;
 char* get_token_decoded (int,char*,int,char*,int*,int*,int,int,int,int ,int*) ;
 char** ins_str ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char*) ;
 int stderr ;
 char* strcat_dup (char*,char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *decode_ins(st32 hash_code, ut32 ins_pos, ut32 ins_off, ut32 *ins_len_dec,
 ut32 *reg_len_dec, ut32 *ret_ins_bits, ut32 magic_value, ut8 two_ins, int *err_code)
{
 ut32 ins_len;
 char *ins, *pos;
 char token_aux[80];
 ut32 i, len;
 char *reg = ((void*)0);
 char *res_decode = ((void*)0);
 char *aux = ((void*)0);


 ins_len = get_ins_len(get_ins_part(ins_pos + ins_off, 1));

 ins = ins_str[1 + 2 + hash_code * 4];
 if (!ins ) {
  fprintf(stderr, "Invalid instruction %s /hash %x\n", ins, hash_code);
  *err_code = -1;
  return ((void*)0);
 }
 if (hash_code == 0x19C) {
  res_decode = get_token_decoded(hash_code, "MMMMxxxxmm", 10, ((void*)0), ret_ins_bits,
   reg_len_dec, magic_value, ins_pos + ins_off, ins_len, two_ins, err_code);
  if (*err_code < 0) {
   return ((void*)0);
  }
 }

 if (C55PLUS_DEBUG) {
  printf ("PSEUDO INS %s\n", ins);
 }

 pos = ins;

 *ins_len_dec = ins_len;

 while (*pos) {
  if (*pos == '`') {
   pos++;
   aux = strchr(pos, '`');
   if (!aux || pos == aux) {
    fprintf(stderr, "Invalid instruction %s\n", ins);
    free (res_decode);
    *err_code = -1;
    return ((void*)0);
   }
   len = (ut32)(size_t)(aux-pos);
   if (len >= 80) {
    fprintf(stderr, "Invalid length token %d\n", len);
    free (res_decode);
    *err_code = -1;
    return ((void*)0);
   }

   memcpy(token_aux, pos, len);
   token_aux[len] = '\0';
   pos = aux;

   if (C55PLUS_DEBUG) {
    printf ("TOKEN AUX: %s\n", token_aux);
   }

   reg = ((void*)0);
   for (i = 0; i < len; i++) {
    if (token_aux[i] == ',') {
     len = (unsigned int)(size_t)(&token_aux[i] - token_aux);
     reg = &token_aux[i + 1];

     if (C55PLUS_DEBUG) {
      printf ("REG : %s\n", reg);
     }
     break;
    }
   }

   aux = get_token_decoded(hash_code, token_aux, len, reg, ret_ins_bits,
    reg_len_dec, magic_value, ins_pos + ins_off, ins_len, two_ins, err_code);
   if (*err_code < 0) {
    return ((void*)0);
   }
   res_decode = strcat_dup(res_decode, aux, 3);
   if (C55PLUS_DEBUG) {
    printf("RET TOKEN %s\n", res_decode);
   }
  } else {
   token_aux[0] = *pos;
   token_aux[1] = '\0';
   res_decode = strcat_dup(res_decode, token_aux, 1);
  }
  pos++;
 }

 if (C55PLUS_DEBUG) {
  printf ("RESULT DECODE: %s\n", res_decode);
 }

 return res_decode;
}
