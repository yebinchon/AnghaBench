
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int zign_spaces; } ;
struct TYPE_25__ {char* name; int addr; } ;
struct TYPE_24__ {TYPE_5__* anal; } ;
struct TYPE_23__ {int name; } ;
typedef TYPE_1__ RSpace ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAnalFunction ;


 int addFcnBytes (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnGraph (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnHash (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnRefs (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnTypes (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnVars (TYPE_2__*,TYPE_3__*,char*) ;
 int addFcnXRefs (TYPE_2__*,TYPE_3__*,char*) ;
 int free (char*) ;
 int r_sign_add_addr (TYPE_5__*,char*,int ) ;
 int r_sign_add_name (TYPE_5__*,char*,char*) ;
 TYPE_1__* r_spaces_current (int *) ;
 int r_spaces_pop (int *) ;
 int r_spaces_push (int *,char*) ;
 char* r_str_appendf (char*,char*,char*) ;
 char* r_str_new (char const*) ;
 char* r_str_newf (char*,int ) ;
 char* r_str_newlen (char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void addFcnZign(RCore *core, RAnalFunction *fcn, const char *name) {
 char *ptr = ((void*)0);
 char *zignspace = ((void*)0);
 char *zigname = ((void*)0);
 const RSpace *curspace = r_spaces_current (&core->anal->zign_spaces);
 int len = 0;

 if (name) {
  zigname = r_str_new (name);
 } else {


  if ((ptr = strchr (fcn->name, ':')) != ((void*)0)) {
   len = ptr - fcn->name;
   zignspace = r_str_newlen (fcn->name, len);
   r_spaces_push (&core->anal->zign_spaces, zignspace);
  } else if (curspace) {
   zigname = r_str_newf ("%s:", curspace->name);
  }
  zigname = r_str_appendf (zigname, "%s", fcn->name);
 }

 addFcnGraph (core, fcn, zigname);
 addFcnBytes (core, fcn, zigname);
 addFcnXRefs (core, fcn, zigname);
 addFcnRefs (core, fcn, zigname);
 addFcnVars (core, fcn, zigname);
 addFcnTypes (core, fcn, zigname);
 addFcnHash (core, fcn, zigname);
 if (strcmp (zigname, fcn->name)) {
  r_sign_add_name (core->anal, zigname, fcn->name);
 }







 r_sign_add_addr (core->anal, zigname, fcn->addr);

 free (zigname);
 if (zignspace) {
  r_spaces_pop (&core->anal->zign_spaces);
  free (zignspace);
 }
}
