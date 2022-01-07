
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;


 int free (char*) ;
 int puts (char*) ;
 char* sdb_encode (char*,int) ;
 scalar_t__ stdin_slurp (int*) ;

__attribute__((used)) static int base64encode() {
 char *out;
 int len = 0;
 ut8 *in = (ut8 *) stdin_slurp (&len);
 if (!in) {
  return 0;
 }
 out = sdb_encode (in, len);
 if (!out) {
  free (in);
  return 1;
 }
 puts (out);
 free (out);
 free (in);
 return 0;
}
