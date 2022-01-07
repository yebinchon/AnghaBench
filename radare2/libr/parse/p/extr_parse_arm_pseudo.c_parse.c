
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w3 ;
typedef int w2 ;
typedef int w1 ;
typedef int w0 ;
typedef int RParse ;


 int eprintf (char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* r_str_replace (char*,char*,char*,int) ;
 int replace (int,char const**,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int parse(RParse *p, const char *data, char *str) {
 char w0[256], w1[256], w2[256], w3[256];
 int i, len = strlen (data);
 char *buf, *ptr, *optr;

 if (len >= sizeof (w0)) {
  return 0;
 }

 if (!(buf = malloc (len + 1))) {
  return 0;
 }
 memcpy (buf, data, len + 1);
 if (*buf) {
  *w0 = *w1 = *w2 = *w3 = '\0';
  ptr = strchr (buf, ' ');
  if (!ptr) {
   ptr = strchr (buf, '\t');
  }
  if (ptr) {
   *ptr = '\0';
   for (++ptr; *ptr == ' '; ptr++) {
    ;
   }
   strncpy (w0, buf, sizeof (w0) - 1);
   strncpy (w1, ptr, sizeof (w1) - 1);

   optr = ptr;
   if (*ptr == '(') {
    ptr = strchr (ptr+1, ')');
   }
   if (ptr && *ptr == '[') {
    ptr = strchr (ptr+1, ']');
   }
   if (ptr && *ptr == '{') {
    ptr = strchr (ptr+1, '}');
   }
   if (!ptr) {
    eprintf ("Unbalanced bracket\n");
    free(buf);
    return 0;
   }
   ptr = strchr (ptr, ',');
   if (ptr) {
    *ptr = '\0';
    for (++ptr; *ptr == ' '; ptr++) {
     ;
    }
    strncpy (w1, optr, sizeof (w1) - 1);
    strncpy (w2, ptr, sizeof (w2) - 1);
    optr = ptr;
    ptr = strchr (ptr, ',');
    if (ptr) {
     *ptr = '\0';
     for (++ptr; *ptr == ' '; ptr++) {
      ;
     }
     strncpy (w2, optr, sizeof (w2) - 1);
     strncpy (w3, ptr, sizeof (w3) - 1);
    }
   }
  }
  {
   const char *wa[] = { w0, w1, w2, w3 };
   int nw = 0;
   for (i = 0; i < 4; i++) {
    if (wa[i][0]) {
     nw++;
    }
   }
   replace (nw, wa, str);
  }
 }
 {
  char *s = strdup (str);
  s = r_str_replace (s, "+ -", "- ", 1);
  s = r_str_replace (s, "- -", "+ ", 1);
  strcpy (str, s);
  free (s);
 }
 free (buf);
 return 1;
}
