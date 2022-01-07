
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* anal; } ;
struct TYPE_3__ {int * sdb_types; } ;
typedef int Sdb ;
typedef TYPE_2__ RCore ;
typedef int PJ ;


 int atoi (char*) ;
 int free (char*) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_ki (int *,char*,int) ;
 int pj_ks (int *,char*,char const*) ;
 int * pj_new () ;
 int pj_o (int *) ;
 int pj_string (int *) ;
 int r_cons_printf (char*,int ) ;
 char* r_str_newf (char*,char const*) ;
 int r_str_trim (char*) ;
 char* sdb_querys (int *,int *,int,char*) ;

__attribute__((used)) static int print_typelist_json_cb(void *p, const char *k, const char *v) {
 RCore *core = (RCore *)p;
 PJ *pj = pj_new ();
 pj_o (pj);
 Sdb *sdb = core->anal->sdb_types;
 char *sizecmd = r_str_newf ("type.%s.size", k);
 char *size_s = sdb_querys (sdb, ((void*)0), -1, sizecmd);
 char *formatcmd = r_str_newf ("type.%s", k);
 char *format_s = sdb_querys (sdb, ((void*)0), -1, formatcmd);
 r_str_trim (format_s);
 pj_ks (pj, "type", k);
 pj_ki (pj, "size", size_s ? atoi (size_s) : -1);
 pj_ks (pj, "format", format_s);
 pj_end (pj);
 r_cons_printf ("%s", pj_string (pj));
 pj_free (pj);
 free (size_s);
 free (format_s);
 free (sizecmd);
 free (formatcmd);
 return 1;
}
