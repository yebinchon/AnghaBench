
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {scalar_t__ offset; int num; } ;
typedef int RStrBuf ;
typedef TYPE_1__ RCore ;


 int __esil_init (TYPE_1__*) ;
 int __esil_step_to (TYPE_1__*,scalar_t__) ;
 int __set_refresh_all (TYPE_1__*,int,int) ;
 char* __show_status_input (TYPE_1__*,int ) ;
 scalar_t__ r_num_math (int ,char*) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_free (int *) ;
 int r_strbuf_get (int *) ;
 int * r_strbuf_new (int *) ;

int __esil_step_range_cb(void *user) {
 RStrBuf *rsb = r_strbuf_new (((void*)0));
 RCore *core = (RCore *)user;
 r_strbuf_append (rsb, "start addr: ");
 char *s = __show_status_input (core, r_strbuf_get (rsb));
 r_strbuf_append (rsb, s);
 r_strbuf_append (rsb, " end addr: ");
 char *d = __show_status_input (core, r_strbuf_get (rsb));
 r_strbuf_free (rsb);
 ut64 s_a = r_num_math (core->num, s);
 ut64 d_a = r_num_math (core->num, d);
 if (s_a >= d_a) {
  return 0;
 }
 ut64 tmp = core->offset;
 core->offset = s_a;
 __esil_init (core);
 __esil_step_to (core, d_a);
 core->offset = tmp;
 __set_refresh_all ((RCore *)user, 0, 0);
 return 0;
}
