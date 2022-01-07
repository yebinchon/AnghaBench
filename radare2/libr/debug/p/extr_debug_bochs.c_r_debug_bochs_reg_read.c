
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef int ut64 ;
struct TYPE_3__ {scalar_t__* data; } ;
typedef int RDebug ;


 int bAjusta ;
 int bCapturaRegs ;
 int bochs_send_cmd (TYPE_1__*,char*,int) ;
 TYPE_1__* desc ;
 int eprintf (char*,char const*) ;
 int isBochs (int *) ;
 int memcpy (scalar_t__*,...) ;
 int r_num_get (int *,char*) ;
 scalar_t__ ripStop ;
 scalar_t__* saveRegs ;
 int strlen (scalar_t__*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int r_debug_bochs_reg_read(RDebug *dbg, int type, ut8 *buf, int size) {
 char strReg[19];
 char regname[4];
 char strBase[19];
 char strLimit[19];
 int i = 0, pos = 0, lenRec = 0;
 ut64 val = 0, valRIP = 0;
 if (!isBochs (dbg)) {
  return 0;
 }


 if (bCapturaRegs == 1) {
  bochs_send_cmd (desc, "regs", 1);




  pos = 0x78;
  lenRec = strlen (desc->data);
  while (desc->data[i] != 0 && i < lenRec -4 ) {
   if ( (desc->data[i] == (ut8)'r' && desc->data[i + 3] == (ut8)':')) {
    strncpy (regname, &desc->data[i], 3);
    regname[3] = 0;
    strncpy (&strReg[2], &desc->data[i + 5], 8);
    strncpy (&strReg[10], &desc->data[i + 14], 8);
    strReg[0]='0';
    strReg[1]='x';
    strReg[18] = 0;
    i += 22;
    val = r_num_get (((void*)0), strReg);

    memcpy (&buf[pos], &val, 8);

    if (!strncmp (regname, "rip", 3)) {

     valRIP = val;
    }
    pos+= 8;

   } else {
    i++;
   }
  }

  bochs_send_cmd (desc, "info cpu", 1);
  if (strstr (desc->data,"PC_32")) {
   bAjusta = 1;

  } else if (strstr (desc->data,"PC_80")) {
   bAjusta = 0;

  } else if (strstr (desc->data,"PC_64")) {
   bAjusta = 0;

  } else {
   eprintf ("[unknown mode]\n%s\n", desc->data);
  }
  bochs_send_cmd (desc, "sreg", 1);

  pos = 0x38;
  char * s [] = { "es:0x", "cs:0x","ss:0x","ds:0x","fs:0x","gs:0x",0};
  const char *x;
  int n;
  for (n = 0; s[n] != 0; n++) {
   if ((x = strstr (desc->data,s[n]))) {
    strncpy (&strReg[0], x+3, 7);
    strReg[6] = 0;
    val = r_num_get (((void*)0), strReg);
    strncpy (regname, s[n], 2);
    regname[2] = 0;
    if ((x = strstr (x, "base="))) {
     strncpy (strBase, x + 5, 10);
     strBase[10] = 0;
     if ((x = strstr (x, "limit="))) {
      strncpy (strLimit, x + 6, 10);
      strLimit[10] = 0;
     }
    }

    memcpy (&buf[pos], &val, 2);
    pos += 2;
    if (bAjusta) {
     if (!strncmp (regname,"cs",2)) {
      valRIP += (val*0x10);

     }
    }
   }
  }

  if (ripStop != 0) {
   memcpy (&buf[0], &ripStop, 8);
  } else {
   memcpy (&buf[0], &valRIP, 8);
  }

  memcpy (saveRegs,buf,size);
  bCapturaRegs = 0;

 } else {
  memcpy (buf, saveRegs, size);

 }
 return size;
}
