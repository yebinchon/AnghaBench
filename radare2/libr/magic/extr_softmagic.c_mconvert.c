
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
union VALUETYPE {char* s; short h; int* hs; int l; int* hl; int q; int * hq; } ;
struct r_magic {int type; } ;
typedef void* st32 ;
struct TYPE_4__ {union VALUETYPE ms_value; } ;
typedef TYPE_1__ RMagic ;
 int cvt_16 (union VALUETYPE*,struct r_magic*) ;
 int cvt_32 (union VALUETYPE*,struct r_magic*) ;
 int cvt_64 (union VALUETYPE*,struct r_magic*) ;
 int cvt_8 (union VALUETYPE*,struct r_magic*) ;
 int cvt_double (union VALUETYPE*,struct r_magic*) ;
 int cvt_float (union VALUETYPE*,struct r_magic*) ;
 int file_magerror (TYPE_1__*,char*,int) ;
 int r_read_be32 (int*) ;
 int r_read_le32 (int*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int mconvert(RMagic *ms, struct r_magic *m) {
 union VALUETYPE *p = &ms->ms_value;

 switch (m->type) {
 case 155:
  cvt_8(p, m);
  return 1;
 case 129:
  cvt_16(p, m);
  return 1;
 case 139:
 case 154:
 case 150:
  cvt_32(p, m);
  return 1;
 case 132:
 case 134:
 case 133:
  cvt_64(p, m);
  return 1;
 case 128:
 case 156:
 case 140: {
  size_t len;


  p->s[sizeof(p->s) - 1] = '\0';
  len = strlen(p->s);
  if (len-- && p->s[len] == '\n') {
   p->s[len] = '\0';
  }
  return 1;
 }
 case 135: {
  char *ptr1 = p->s, *ptr2 = ptr1 + 1;
  size_t len = *p->s;
  if (len >= sizeof (p->s)) {
   len = sizeof (p->s) - 1;
  }
  while (len--) {
   *ptr1++ = *ptr2++;
  }
  *ptr1 = '\0';
  len = strlen(p->s);
  if (len-- && p->s[len] == '\n') {
   p->s[len] = '\0';
  }
  return 1;
 }
 case 157:
  p->h = (short)((p->hs[0]<<8)|(p->hs[1]));
  cvt_16(p, m);
  return 1;
 case 161:
 case 165:
 case 162:
  p->l = (st32) r_read_be32 (p->hl);
  cvt_32(p, m);
  return 1;
 case 158:
 case 160:
 case 159:
  p->q = (ut64)
      (((ut64)p->hq[0]<<56)|((ut64)p->hq[1]<<48)|
       ((ut64)p->hq[2]<<40)|((ut64)p->hq[3]<<32)|
       ((ut64)p->hq[4]<<24)|((ut64)p->hq[5]<<16)|
       ((ut64)p->hq[6]<<8)|((ut64)p->hq[7]));
  cvt_64(p, m);
  return 1;
 case 141:
  p->h = (short)((p->hs[1]<<8)|(p->hs[0]));
  cvt_16(p, m);
  return 1;
 case 145:
 case 149:
 case 146:
  p->l = (st32) r_read_le32 (p->hl);
  cvt_32(p, m);
  return 1;
 case 142:
 case 144:
 case 143:
  p->q = (ut64)
      (((ut64)p->hq[7]<<56)|((ut64)p->hq[6]<<48)|
       ((ut64)p->hq[5]<<40)|((ut64)p->hq[4]<<32)|
       ((ut64)p->hq[3]<<24)|((ut64)p->hq[2]<<16)|
       ((ut64)p->hq[1]<<8)|((ut64)p->hq[0]));
  cvt_64(p, m);
  return 1;
 case 136:
 case 138:
 case 137:
  p->l = (st32)
      ((p->hl[1]<<24)|(p->hl[0]<<16)|(p->hl[3]<<8)|(p->hl[2]));
  cvt_32(p, m);
  return 1;
 case 151:
  cvt_float(p, m);
  return 1;
 case 163:
  p->l = ((ut32)p->hl[0]<<24)|((ut32)p->hl[1]<<16)|
   ((ut32)p->hl[2]<<8) |((ut32)p->hl[3]);
  cvt_float(p, m);
  return 1;
 case 147:
  p->l = ((ut32)p->hl[3]<<24)|((ut32)p->hl[2]<<16)|
   ((ut32)p->hl[1]<<8) |((ut32)p->hl[0]);
  cvt_float(p, m);
  return 1;
 case 152:
  cvt_double(p, m);
  return 1;
 case 164:
  p->q = ((ut64)p->hq[0]<<56)|((ut64)p->hq[1]<<48)|
   ((ut64)p->hq[2]<<40)|((ut64)p->hq[3]<<32)|
   ((ut64)p->hq[4]<<24)|((ut64)p->hq[5]<<16)|
   ((ut64)p->hq[6]<<8) |((ut64)p->hq[7]);
  cvt_double(p, m);
  return 1;
 case 148:
  p->q = ((ut64)p->hq[7]<<56)|((ut64)p->hq[6]<<48)|
   ((ut64)p->hq[5]<<40)|((ut64)p->hq[4]<<32)|
   ((ut64)p->hq[3]<<24)|((ut64)p->hq[2]<<16)|
   ((ut64)p->hq[1]<<8) |((ut64)p->hq[0]);
  cvt_double(p, m);
  return 1;
 case 131:
 case 130:
 case 153:
  return 1;
 default:
  file_magerror(ms, "invalid type %d in mconvert()", m->type);
  return 0;
 }
}
