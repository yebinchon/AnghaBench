
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RAnalEsil ;


 scalar_t__ IS_DIGIT (char const) ;
 scalar_t__ r_num_get (int *,char const*) ;

__attribute__((used)) static bool isnum(RAnalEsil *esil, const char *str, ut64 *num) {
 if (!esil || !str) {
  return 0;
 }
 if (IS_DIGIT (*str)) {
  if (num) {
   *num = r_num_get (((void*)0), str);
  }
  return 1;
 }
 if (num) {
  *num = 0;
 }
 return 0;
}
