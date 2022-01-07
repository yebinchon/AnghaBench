
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cout; int * fout; } ;
typedef TYPE_1__ Output ;


 int r_strbuf_free (int ) ;
 int r_strbuf_get (int ) ;
 int r_strbuf_new (char*) ;
 int spp_run (char*,TYPE_1__*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *spp_run_str(char *buf, int *rv) {
 char *b;
 Output tmp;
 tmp.fout = ((void*)0);
 tmp.cout = r_strbuf_new ("");
 int rc = spp_run (buf, &tmp);
 b = strdup (r_strbuf_get (tmp.cout));
 r_strbuf_free (tmp.cout);
 if (rv) {
  *rv = rc;
 }
 return b;
}
