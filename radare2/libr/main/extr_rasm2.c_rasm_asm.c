
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_9__ {int len; int* bytes; } ;
struct TYPE_8__ {int a; } ;
typedef TYPE_1__ RAsmState ;
typedef TYPE_2__ RAsmCode ;


 int R_SYS_ENDIAN ;
 int eprintf (char*) ;
 int free (char*) ;
 int print_buf (TYPE_1__*,char*) ;
 int printf (char*,...) ;
 int r_asm_code_free (TYPE_2__*) ;
 char* r_asm_code_get_hex (TYPE_2__*) ;
 TYPE_2__* r_asm_rasm_assemble (int ,char const*,int) ;
 int r_asm_set_pc (int ,int ) ;
 int r_read_ble32 (int*,int ) ;
 int write (int,int*,int) ;

__attribute__((used)) static int rasm_asm(RAsmState *as, const char *buf, ut64 offset, ut64 len, int bits, int bin, bool use_spp, bool hexwords) {
 RAsmCode *acode;
 int i, j, ret = 0;
 r_asm_set_pc (as->a, offset);
 if (!(acode = r_asm_rasm_assemble (as->a, buf, use_spp))) {
  return 0;
 }
 if (acode->len) {
  ret = acode->len;
  if (bin) {
   if ((ret = write (1, acode->bytes, acode->len)) != acode->len) {
    eprintf ("Failed to write buffer\n");
    r_asm_code_free (acode);
    return 0;
   }
  } else {
   int b = acode->len;
   if (bits == 1) {
    int bytes = (b / 8) + 1;
    for (i = 0; i < bytes; i++) {
     for (j = 0; j < 8 && b--; j++) {
      printf ("%c", (acode->bytes[i] & (1 << j))? '1': '0');
     }
    }
    printf ("\n");
   } else {
    if (hexwords) {
     size_t i = 0;
     for (i = 0; i < acode->len; i += sizeof (ut32)) {
      ut32 dword = r_read_ble32 (acode->bytes + i, R_SYS_ENDIAN);
      printf ("0x%08x ", dword);
      if ((i/4) == 7) {
       printf ("\n");
      }
     }
     printf ("\n");
    } else {
     char* str = r_asm_code_get_hex (acode);
     if (str) {
      print_buf (as, str);
      free (str);
     }
    }
   }
  }
 }
 r_asm_code_free (acode);
 return (ret > 0);
}
