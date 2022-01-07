
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ UT64_MAX ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool simulate_op (const char *op, ut64 src1, ut64 src2, ut64 old_src1, ut64 old_src2, ut64 *result, int size) {
 ut64 limit;
 if (size == 64) {
  limit = UT64_MAX;
 } else {
  limit = 1ULL << size;
 }

 if (!strcmp (op, "^")) {
  *result = src1 ^ src2;
  return 1;
 }
 if (!strcmp (op, "+")) {
  *result = src1 + src2;
  return 1;
 }
 if (!strcmp (op, "-")) {
  if (src2 > src1) {
   *result = limit + (src1 - src2);
  } else {
   *result = src1 - src2;
  }
  return 1;
 }
 if (!strcmp (op, "*")) {
  *result = src1 * src2;
  return 1;
 }
 if (!strcmp (op, "|")) {
  *result = src1 | src2;
  return 1;
 }
 if (!strcmp (op, "/")) {
  *result = src1 / src2;
  return 1;
 }
 if (!strcmp (op, "%")) {
  *result = src1 % src2;
  return 1;
 }
 if (!strcmp (op, "<<")) {
  *result = src1 << src2;
  return 1;
 }
 if (!strcmp (op, ">>")) {
  *result = src1 >> src2;
  return 1;
 }
 if (!strcmp (op, "&")) {
  *result = src1 & src2;
  return 1;
 }
 if (!strcmp (op, "+=")) {
  *result = old_src1 + src2;
  return 1;
 }
 if (!strcmp (op, "-=")) {
  if (src2 > old_src1) {
   *result = limit + (old_src1 - src2);
  } else {
   *result = old_src1 - src2;
  }
  return 1;
 }
 if (!strcmp (op, "*=")) {
  *result = old_src1 * src2;
  return 1;
 }
 if (!strcmp (op, "/=")) {
  *result = old_src1 / src2;
  return 1;
 }
 if (!strcmp (op, "%=")) {
  *result = old_src1 % src2;
  return 1;
 }
 if (!strcmp (op, "<<")) {
  *result = src1 << src2;
  return 1;
 }
 if (!strcmp (op, ">>")) {
  *result = src1 >> src2;
  return 1;
 }
 if (!strcmp (op, "&=")) {
  *result = src1 & src2;
  return 1;
 }
 if (!strcmp (op, "^=")) {
  *result = src1 ^ src2;
  return 1;
 }
 if (!strcmp (op, "|=")) {
  *result = src1 | src2;
  return 1;
 }
 return 0;
}
