
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RParse ;


 int REPLACE (char*,char*) ;
 int WSZ ;
 int free (char*) ;
 char* malloc (int) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 char* r_str_replace (char*,char*,char*,int ) ;
 int r_str_replace_char (char*,char,char) ;
 int r_str_trim (char*) ;
 int replace (int,char const**,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int parse(RParse *p, const char *data, char *str) {
 int i, len = strlen (data);
 char w0[WSZ];
 char w1[WSZ];
 char w2[WSZ];
 char w3[WSZ];
 char w4[WSZ];
 char w5[WSZ];
 char *buf, *ptr, *optr;

 if (!strcmp (data, "jr ra")) {
  strcpy (str, "return");
  return 1;
 }


 if (!(buf = malloc (len + 1))) {
  return 0;
 }
 memcpy (buf, data, len + 1);

 r_str_replace_char (buf, '(', ',');
 r_str_replace_char (buf, ')', ' ');
 r_str_trim (buf);
 if (*buf) {
  w0[0] = '\0';
  w1[0] = '\0';
  w2[0] = '\0';
  w3[0] = '\0';
  w4[0] = '\0';
  ptr = strchr (buf, ' ');
  if (!ptr) {
   ptr = strchr (buf, '\t');
  }
  if (ptr) {
   *ptr = '\0';
   for (++ptr; *ptr == ' '; ptr++) {

   }
   strncpy (w0, buf, WSZ - 1);
   strncpy (w1, ptr, WSZ - 1);

   optr = ptr;
   ptr = strchr (ptr, ',');
   if (ptr) {
    *ptr = '\0';
    for (++ptr; *ptr == ' '; ptr++) {

    }
    strncpy (w1, optr, WSZ - 1);
    strncpy (w2, ptr, WSZ - 1);
    optr = ptr;
    ptr = strchr (ptr, ',');
    if (ptr) {
     *ptr = '\0';
     for (++ptr; *ptr == ' '; ptr++) {

     }
     strncpy (w2, optr, WSZ - 1);
     strncpy (w3, ptr, WSZ - 1);
     optr = ptr;

     ptr = strchr (ptr, ',');
     if (ptr) {
      *ptr = '\0';
      for (++ptr; *ptr == ' '; ptr++) {

      }
      strncpy (w3, optr, WSZ - 1);
      strncpy (w4, ptr, WSZ - 1);
      optr = ptr;

      ptr = strchr (ptr, ',');
      if (ptr) {
       *ptr = '\0';
       for (++ptr; *ptr == ' '; ptr++) {

       }
       strncpy (w4, optr, WSZ - 1);
       strncpy (w5, ptr, WSZ - 1);
      }
     }
    }
   }
  } else {
   strncpy (w0, buf, WSZ - 1);
  }
  {
   const char *wa[] = { w0, w1, w2, w3, w4, w5 };
   int nw = 0;
   for (i = 0; i < 4; i++) {
    if (wa[i][0] != '\0') {
     nw++;
    }
   }
   replace (nw, wa, str);
   {
    char *p = strdup (str);
    p = r_str_replace (p, "+ -", "- ", 0);
    p = r_str_replace (p, " + ]", "]  ", 0);





    if (!strcmp (w1, w2)) {
     char a[64], b[64];
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s +", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s +=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s -", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s -=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s &", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s &=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s |", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s |=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s ^", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s ^=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s >>", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s >>=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
     do { int snprintf_len1_ = snprintf (a, 64, "%s = %s <<", w1, w1); int snprintf_len2_ = snprintf (b, 64, "%s <<=", w1); if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { p = r_str_replace (p, a, b, 0); } } while (0);
    }
    p = r_str_replace (p, ":", "0000", 0);
    strcpy (str, p);
    free (p);
   }
  }
 }
 free (buf);
 return 1;
}
