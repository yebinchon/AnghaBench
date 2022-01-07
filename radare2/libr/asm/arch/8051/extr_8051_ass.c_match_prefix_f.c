
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parse_mnem_args ;
typedef TYPE_1__* ftable ;
struct TYPE_3__ {int args; int res; scalar_t__ pattern; } ;


 scalar_t__ pattern_match (char const*,scalar_t__) ;

__attribute__((used)) static parse_mnem_args match_prefix_f(int*args, char const*str, ftable const tbl) {
 int row = 0;
 while (tbl[row].pattern) {
  if (pattern_match (str, tbl[row].pattern)) {
   *args = tbl[row].args;
   return tbl[row].res;
  }
  else {
   row += 1;
  }
 }
 *args = tbl[row].args;
 return tbl[row].res;
}
