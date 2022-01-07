
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int digest; } ;
typedef TYPE_1__ RHash ;


 int eprintf (char*) ;
 int memcmp (int ,int const*,int) ;
 int printf (char*) ;

__attribute__((used)) static void compare_hashes(const RHash *ctx, const ut8 *compare, int length, int *ret) {
 if (compare) {

  if (!memcmp (ctx->digest, compare, length)) {
   printf ("rahash2: Computed hash matches the expected one.\n");
  } else {
   eprintf ("rahash2: Computed hash doesn't match the expected one.\n");
   *ret = 1;
  }
 }
}
