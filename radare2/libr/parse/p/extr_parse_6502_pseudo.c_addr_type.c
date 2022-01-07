
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ADDR_TYPE ;


 int IDX_IND ;
 int IND_IDX ;
 int NORM ;
 char* strchr (char const*,char) ;

__attribute__((used)) static ADDR_TYPE addr_type(const char *str) {
 if (strchr(str, '(')) {
  char *e = strchr (str, ')');
  if (!e) {
   return NORM;
  }
  char *o = strchr (e, ',');
  return (o) ? IND_IDX : IDX_IND;
 }
 return NORM;
}
