
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_8__ {int num; } ;
struct TYPE_7__ {TYPE_1__* model; } ;
struct TYPE_6__ {char* cmdStrCache; } ;
typedef int RStrBuf ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 scalar_t__ R_STR_ISNOTEMPTY (char*) ;
 int UT64_MAX ;
 int r_num_math (int ,int ) ;
 int r_strbuf_append_n (int *,char*,int) ;
 int r_strbuf_free (int *) ;
 int r_strbuf_get (int *) ;
 int * r_strbuf_new (int *) ;

ut64 __parse_string_on_cursor(RCore *core, RPanel *panel, int idx) {
 if (!panel->model->cmdStrCache) {
  return UT64_MAX;
 }
 RStrBuf *buf = r_strbuf_new (((void*)0));
 char *s = panel->model->cmdStrCache;
 int l = 0;
 while (R_STR_ISNOTEMPTY (s) && l != idx) {
  if (*s == '\n') {
   l++;
  }
  s++;
 }
 while (R_STR_ISNOTEMPTY (s) && R_STR_ISNOTEMPTY (s + 1)) {
  if (*s == '0' && *(s + 1) == 'x') {
   r_strbuf_append_n (buf, s, 2);
   while (*s != ' ') {
    r_strbuf_append_n (buf, s, 1);
    s++;
   }
   ut64 ret = r_num_math (core->num, r_strbuf_get (buf));
   r_strbuf_free (buf);
   return ret;
  }
  s++;
 }
 r_strbuf_free (buf);
 return UT64_MAX;
}
