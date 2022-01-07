
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w2 ;
typedef int w1 ;
typedef int w0 ;
typedef int RParse ;
typedef int ADDR_TYPE ;


 int addr_type (char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int r_str_replace_char (char*,char,char) ;
 int replace (int,char const**,char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int parse(RParse *p, const char *data, char *str) {
 char w0[256], w1[256], w2[256];
 int i, len = strlen (data);
 char *buf, *ptr, *optr;
 ADDR_TYPE atype;

 if (len >= sizeof (w0)) {
  return 0;
 }

 if (!(buf = malloc (len + 1))) {
  return 0;
 }
 memcpy (buf, data, len + 1);

 if (*buf) {
  atype = addr_type (buf);
  r_str_replace_char (buf, '(', ' ');
  r_str_replace_char (buf, ')', ' ');
  *w0 = *w1 = *w2 = '\0';
  ptr = strchr (buf, ' ');
  if (!ptr) {
   ptr = strchr (buf, '\t');
  }
  if (ptr) {
   *ptr = '\0';
   for (++ptr; *ptr == ' '; ptr++) {
    ;
   }
   strncpy (w0, buf, sizeof(w0) - 1);
   strncpy (w1, ptr, sizeof(w1) - 1);
   optr = ptr;
   ptr = strchr (ptr, ',');
   if (ptr) {
    *ptr = '\0';
    for (++ptr; *ptr == ' '; ptr++) {
     ;
    }
    strncpy (w1, optr, sizeof(w1) - 1);
    strncpy (w2, ptr, sizeof(w2) - 1);
   }
  } else {
   strncpy (w0, buf, sizeof(w0) - 1);
  }

  const char *wa[] = {w0, w1, w2};
  int nw = 0;
  for (i = 0; i < 3; i++) {
   if (wa[i][0]) {
    nw++;
   }
  }
  replace (nw, wa, str, atype);
 }

 free (buf);

 return 1;
}
