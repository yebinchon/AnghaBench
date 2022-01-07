
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
struct TYPE_4__ {char* (* cmdstrf ) (int ,char*,int ) ;int core; } ;
struct TYPE_5__ {TYPE_1__ coreb; } ;
typedef TYPE_2__ RAnal ;


 int UT64_MAX ;
 int free (char*) ;
 int r_cons_pop () ;
 int r_cons_push () ;
 int r_num_get (int *,char*) ;
 int read_u32_leb128 (int const*,int const*,int *) ;
 char* stub1 (int ,char*,int ) ;

__attribute__((used)) static ut64 get_cf_offset(RAnal *anal, const ut8 *data, int len) {
 ut32 fcn_id;

 if (!read_u32_leb128 (&data[1], &data[len - 1], &fcn_id)) {
  return UT64_MAX;
 }
 r_cons_push ();


 char *s = anal->coreb.cmdstrf (anal->coreb.core, "is~FUNC[2:%u]", fcn_id);
 r_cons_pop ();
 if (s) {
  ut64 n = r_num_get (((void*)0), s);
  free (s);
  return n;
 }
 return UT64_MAX;
}
