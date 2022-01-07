
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;
typedef int PJ ;


 int R2P (int *) ;
 int atoi (char*) ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_ks (int *,char*,char const*) ;
 int * pj_new () ;
 int pj_o (int *) ;
 char* pj_string (int *) ;
 char* r2pipe_read (int ) ;
 int r2pipe_write (int ,char const*) ;
 int r_return_val_if_fail (int ,int *) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *__system(RIO *io, RIODesc *fd, const char *msg) {
 r_return_val_if_fail (io && fd && msg, ((void*)0));
 PJ *pj = pj_new ();
 pj_o (pj);
 pj_ks (pj, "op", "system");
 pj_ks (pj, "cmd", msg);
 pj_end (pj);
 const char *fmt = pj_string (pj);
 int rv = r2pipe_write (R2P (fd), fmt);
 pj_free (pj);
 if (rv < 1) {
  eprintf ("r2pipe_write: error\n");
  return ((void*)0);
 }
 char *res = r2pipe_read (R2P (fd));


 char *r = strstr (res, "result");
 if (r) {
  int rescount = atoi (r + 6 + 1);
  eprintf ("RESULT %d\n", rescount);
 }
 free (res);
 return ((void*)0);
}
