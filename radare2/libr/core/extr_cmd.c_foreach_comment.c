
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* user; TYPE_1__* anal; } ;
struct TYPE_3__ {int * user; } ;
typedef int RCore ;
typedef TYPE_2__ RAnalMetaUserItem ;


 int free (char*) ;
 int r_core_cmd0 (int *,char const*) ;
 int r_core_cmdf (int *,char*,char const*) ;
 scalar_t__ sdb_decode (char const*,int ) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int foreach_comment(void *user, const char *k, const char *v) {
 RAnalMetaUserItem *ui = user;
 RCore *core = ui->anal->user;
 const char *cmd = ui->user;
 if (!strncmp (k, "meta.C.", 7)) {
  char *cmt = (char *)sdb_decode (v, 0);
  if (cmt) {
   r_core_cmdf (core, "s %s", k + 7);
   r_core_cmd0 (core, cmd);
   free (cmt);
  }
 }
 return 1;
}
