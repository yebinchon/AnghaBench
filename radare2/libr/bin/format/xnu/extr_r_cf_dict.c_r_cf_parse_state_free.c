
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCFParseState ;


 int R_FREE (int *) ;

__attribute__((used)) static void r_cf_parse_state_free(RCFParseState *state) {
 if (state) {
  R_FREE (state);
 }
}
