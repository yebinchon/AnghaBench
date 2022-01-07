
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w3 ;
typedef int w2 ;
typedef int w1 ;
typedef int w0 ;
typedef int RParse ;


 int atoi (char*) ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 scalar_t__ r_str_lchr (char*,char) ;
 int r_str_replace_char (char*,char,char) ;
 int r_str_trim (char*) ;
 int r_str_trim_head (char*) ;
 int replace (int,char const**,char*) ;
 int sprintf (char*,char*,int,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int parse(RParse *p, const char *data, char *str) {
 int i, n;
 char w0[32];
 char w1[32];
 char w2[32];
 char w3[32];
 char *buf, *ptr, *optr, *num;


 buf = strdup (data);
 if (!buf) {
  return 0;
 }
 r_str_trim_head (buf);

 ptr = strchr (buf, '#');
 if (ptr) {
  *ptr = 0;
  r_str_trim (buf);
 }
 if (*buf == '.' || buf[strlen(buf)-1] == ':') {
  free (buf);
  strcpy (str, data);
  return 1;
 }
 r_str_replace_char (buf, '$', 0);
 r_str_replace_char (buf, '%', 0);
 r_str_replace_char (buf, '\t', ' ');
 r_str_replace_char (buf, '(', '[');
 r_str_replace_char (buf, ')', ']');
 ptr = strchr (buf, '[');
 if (ptr) {
  *ptr = 0;
  num = (char*)r_str_lchr (buf, ' ');
  if (!num) {
   num = (char *)r_str_lchr (buf, ',');
  }
  if (num) {
   n = atoi (num+1);
   *ptr = '[';
   memmove (num+1, ptr, strlen (ptr)+1);
   ptr = (char*)r_str_lchr (buf, ']');
   if (n && ptr) {
    char *rest = strdup (ptr+1);
    if (n > 0) {
     sprintf (ptr, "+%d]%s", n, rest);
    } else {
     sprintf (ptr, "%d]%s", n, rest);
    }
    free (rest);
   }
  } else {
   *ptr = '[';
  }
 }

 if (*buf) {
  *w0 = *w1 = *w2 = *w3 = 0;
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
    strncpy (w1, optr, sizeof(w1)-1);
    strncpy (w2, ptr, sizeof(w2)-1);
    ptr = strchr (ptr, ',');
    if (ptr) {
     *ptr = '\0';
     for (++ptr; *ptr == ' '; ptr++) {
      ;
     }
     strncpy (w2, optr, sizeof(w2)-1);
     strncpy (w3, ptr, sizeof(w3)-1);
    }
   }
  }
  {
   const char *wa[] = { w0, w1, w2, w3 };
   int nw = 0;
   for (i=0; i<4; i++) {
    if (wa[i][0] != '\0') {
     nw++;
    }
   }
   replace (nw, wa, str);
  }
 }
 free (buf);
 return 1;
}
