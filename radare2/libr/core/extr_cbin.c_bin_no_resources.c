
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 scalar_t__ IS_MODE_JSON (int) ;
 int r_cons_printf (char*) ;

__attribute__((used)) static void bin_no_resources(RCore *r, int mode) {
 if (IS_MODE_JSON (mode)) {
  r_cons_printf ("[]");
 }
}
