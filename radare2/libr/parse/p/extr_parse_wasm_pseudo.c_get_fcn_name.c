
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_4__ {char* (* cmdstrf ) (int ,char*,int ) ;int core; } ;
struct TYPE_5__ {TYPE_1__ coreb; } ;
typedef TYPE_2__ RAnal ;


 int r_cons_pop () ;
 int r_cons_push () ;
 size_t strlen (char*) ;
 char* stub1 (int ,char*,int ) ;

__attribute__((used)) static char* get_fcn_name(RAnal *anal, ut32 fcn_id) {
 r_cons_push ();
 char *s = anal->coreb.cmdstrf (anal->coreb.core, "is~FUNC[6:%u]", fcn_id);
 r_cons_pop ();
 if (s) {
  size_t namelen = strlen (s);
  s[namelen - 1] = 0;
 }
 return s;
}
