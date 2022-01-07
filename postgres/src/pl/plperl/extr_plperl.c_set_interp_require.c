
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OP_DOFILE ;
 size_t OP_REQUIRE ;
 int * PL_ppaddr ;
 int pp_require_orig ;
 int pp_require_safe ;

__attribute__((used)) static void
set_interp_require(bool trusted)
{
 if (trusted)
 {
  PL_ppaddr[OP_REQUIRE] = pp_require_safe;
  PL_ppaddr[OP_DOFILE] = pp_require_safe;
 }
 else
 {
  PL_ppaddr[OP_REQUIRE] = pp_require_orig;
  PL_ppaddr[OP_DOFILE] = pp_require_orig;
 }
}
