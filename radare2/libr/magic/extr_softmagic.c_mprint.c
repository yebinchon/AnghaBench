
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
union VALUETYPE {int l; int q; char* s; float f; double d; int h; int b; } ;
typedef int time_t ;
struct TYPE_11__ {char* s; } ;
struct r_magic {int type; char reln; int vallen; int str_flags; TYPE_2__ value; } ;
typedef int st32 ;
struct TYPE_10__ {int rm_len; int offset; scalar_t__ s; } ;
struct TYPE_12__ {int offset; TYPE_1__ search; union VALUETYPE ms_value; } ;
typedef TYPE_3__ RMagic ;
 int REGEX_OFFSET_START ;
 int R_MAGIC_DESC ;
 int check_fmt (TYPE_3__*,struct r_magic*) ;
 char* file_fmttime (int,int) ;
 int file_magerror (TYPE_3__*,char*,int const) ;
 int file_oomem (TYPE_3__*,int) ;
 int file_printf (TYPE_3__*,int ,...) ;
 int file_signextend (TYPE_3__*,struct r_magic*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,double) ;
 size_t strcspn (char*,char*) ;
 char* strdupn (char const*,int) ;
 int strlen (char*) ;

__attribute__((used)) static st32 mprint(RMagic *ms, struct r_magic *m) {
 ut64 v;
 float vf;
 double vd;
 ut64 t = 0;
  char *buf = ((void*)0);
 union VALUETYPE *p = &ms->ms_value;

   switch (m->type) {
   case 155:
  v = file_signextend(ms, m, (ut64)p->b);
  switch (check_fmt(ms, m)) {
  case -1:
   return -1;
  case 1:
   buf = malloc (2);
   if (snprintf (buf, 2, "%c", (ut8)v)<0) {
    free (buf);
    return -1;
   }
   if (file_printf (ms, R_MAGIC_DESC, buf) == -1) {
    free (buf);
    return -1;
   }
   break;
  default:
   if (file_printf (ms, R_MAGIC_DESC, (ut8)v) == -1) {
    return -1;
   }
   break;
  }
  t = ms->offset + sizeof(char);
  break;
   case 129:
   case 157:
   case 141:
  v = file_signextend (ms, m, (ut64)p->h);
  switch (check_fmt (ms, m)) {
  case -1:
   return -1;
  case 1:
   buf = malloc (32);
   if (snprintf (buf, 32, "%hu", (unsigned short)v) < 0) {
    free (buf);
    return -1;
   }
   if (file_printf(ms, R_MAGIC_DESC, buf) == -1) {
    free (buf);
    return -1;
   }
   break;
  default:
   if (file_printf (ms, R_MAGIC_DESC, (unsigned short)v) == -1) {
    return -1;
   }
   break;
  }
  t = ms->offset + sizeof(short);
  break;
   case 139:
   case 161:
   case 145:
   case 136:
  v = file_signextend(ms, m, (ut64)p->l);
  switch (check_fmt(ms, m)) {
  case -1:
   return -1;
  case 1:
   buf = malloc (32);
   if (snprintf (buf, 32, "%u", (ut32)v) < 0) {
    free (buf);
    return -1;
   }
   if (file_printf(ms, R_MAGIC_DESC, buf) == -1) {
    free (buf);
    return -1;
   }
   break;
  default:
   if (file_printf (ms, R_MAGIC_DESC, (ut32)v) == -1) {
    return -1;
   }
   break;
  }
  t = ms->offset + sizeof(st32);
    break;
   case 132:
   case 158:
   case 142:
  v = file_signextend(ms, m, p->q);
  if (file_printf (ms, R_MAGIC_DESC, (ut64)v) == -1) {
   return -1;
  }
  t = ms->offset + sizeof(ut64);
    break;

   case 128:
   case 135:
   case 156:
   case 140:
  if (m->reln == '=' || m->reln == '!') {
   if (file_printf (ms, R_MAGIC_DESC, m->value.s) == -1) {
    return -1;
   }
   t = ms->offset + m->vallen;
  }
  else {
   if (*m->value.s == '\0') {
    p->s[strcspn (p->s, "\n")] = '\0';
   }
   if (file_printf (ms, R_MAGIC_DESC, p->s) == -1) {
    return -1;
   }
   t = ms->offset + strlen (p->s);
   if (m->type == 135) {
    t++;
   }
  }
  break;
 case 154:
 case 165:
 case 149:
 case 138:
  if (file_printf (ms, R_MAGIC_DESC, file_fmttime (p->l, 1)) == -1) {
   return -1;
  }
  t = ms->offset + sizeof(time_t);
  break;
 case 150:
 case 162:
 case 146:
 case 137:
  if (file_printf (ms, R_MAGIC_DESC, file_fmttime (p->l, 0)) == -1) {
   return -1;
  }
  t = ms->offset + sizeof(time_t);
  break;
 case 134:
 case 160:
 case 144:
  if (file_printf (ms, R_MAGIC_DESC, file_fmttime ((ut32)p->q, 1)) == -1) {
   return -1;
  }
  t = ms->offset + sizeof(ut64);
  break;
 case 133:
 case 159:
 case 143:
  if (file_printf (ms, R_MAGIC_DESC, file_fmttime ((ut32)p->q, 0)) == -1) {
   return -1;
  }
  t = ms->offset + sizeof(ut64);
  break;
   case 151:
   case 163:
   case 147:
  vf = p->f;
  switch (check_fmt(ms, m)) {
  case -1:
   return -1;
  case 1:
   buf = malloc (32);
   if (snprintf (buf, 32, "%g", vf) < 0) {
    free (buf);
    return -1;
   }
   if (file_printf (ms, R_MAGIC_DESC, buf) == -1) {
    free (buf);
    return -1;
   }
   break;
  default:
   if (file_printf (ms, R_MAGIC_DESC, vf) == -1) {
    return -1;
   }
   break;
  }
  t = ms->offset + sizeof(float);
    break;
   case 152:
   case 164:
   case 148:
  vd = p->d;
  switch (check_fmt(ms, m)) {
  case -1:
   return -1;
  case 1:
   buf = malloc (32);
   if (snprintf (buf, 32, "%g", vd) < 0) {
    free (buf);
    return -1;
   }
   if (file_printf (ms, R_MAGIC_DESC, buf) == -1) {
    free (buf);
    return -1;
   }
   break;
  default:
   if (file_printf (ms, R_MAGIC_DESC, vd) == -1) {
    return -1;
   }
   break;
  }
  t = ms->offset + sizeof(double);
    break;
 case 131: {
  char *cp;
  int rval;

  cp = strdupn((const char *)ms->search.s, ms->search.rm_len);
  if (!cp) {
   file_oomem(ms, ms->search.rm_len);
   return -1;
  }
  rval = file_printf(ms, R_MAGIC_DESC, cp);
  free(cp);

  if (rval == -1) {
   return -1;
  }

  if ((m->str_flags & REGEX_OFFSET_START)) {
   t = ms->search.offset;
  } else {
   t = ms->search.offset + ms->search.rm_len;
  }
  break;
 }

 case 130:
  if (file_printf (ms, R_MAGIC_DESC, m->value.s) == -1) {
   return -1;
  }
  if ((m->str_flags & REGEX_OFFSET_START)) {
   t = ms->search.offset;
  } else {
   t = ms->search.offset + m->vallen;
  }
  break;
 case 153:
  if (file_printf (ms, R_MAGIC_DESC, m->value.s) == -1) {
   return -1;
  }
  t = ms->offset;
  break;
 default:
  file_magerror(ms, "invalid m->type (%d) in mprint()", m->type);
  return -1;
 }
 free (buf);
 return t;
}
