
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w4 ;
typedef int w3 ;
typedef int w2 ;
typedef int w1 ;
typedef int w0 ;
typedef int RParse ;


 int REPLACE (char*,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 char* r_str_replace (char*,char*,char*,int ) ;
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
 char *buf, *ptr, *optr, *ptr2;
 char w0[64];
 char w1[64];
 char w2[64];
 char w3[64];
 char w4[64];

 if (!strcmp (data, "invalid")
 || !strcmp (data, "nop")
 || !strcmp (data, "DEPRECATED")) {
  str[0] = 0;
  return 1;
 }


 if (!(buf = malloc (len + 1))) {
  return 0;
 }
 memcpy (buf, data, len + 1);

 r_str_trim (buf);

 if (*buf) {
  w0[0]='\0';
  w1[0]='\0';
  w2[0]='\0';
  w3[0]='\0';
  w4[0]='\0';
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
   w0[sizeof(w0)-1] = '\0';
   strncpy (w1, ptr, sizeof (w1) - 1);
   w1[sizeof(w1)-1] = '\0';

   optr=ptr;
   ptr2 = strchr (ptr, '}');
   if (ptr2) {
    ptr = ptr2 + 1;
   }
   ptr = strchr (ptr, ',');
   if (ptr) {
    *ptr = '\0';
    for (++ptr; *ptr == ' '; ptr++) {
     ;
    }
    strncpy (w1, optr, sizeof (w1) - 1);
    w1[sizeof(w1)-1] = '\0';
    strncpy (w2, ptr, sizeof (w2) - 1);
    w2[sizeof(w2)-1] = '\0';
    optr=ptr;
    ptr = strchr (ptr, ',');
    if (ptr) {
     *ptr = '\0';
     for (++ptr; *ptr == ' '; ptr++) {
      ;
     }
     strncpy (w2, optr, sizeof (w2) - 1);
     w2[sizeof(w2)-1] = '\0';
     strncpy (w3, ptr, sizeof (w3) - 1);
     w3[sizeof(w3)-1] = '\0';
     optr=ptr;

     ptr = strchr (ptr, ',');
     if (ptr) {
      *ptr = '\0';
      for (++ptr; *ptr == ' '; ptr++) {
       ;
      }
      strncpy (w3, optr, sizeof (w3) - 1);
      w3[sizeof(w3)-1] = '\0';
      strncpy (w4, ptr, sizeof (w4) - 1);
      w4[sizeof(w4)-1] = '\0';
     }
    }
   }
  }
  {
   const char *wa[] = { w0, w1, w2, w3, w4 };
   int nw = 0;
   for (i=0; i<4; i++) {
    if (wa[i][0] != '\0') {
     nw++;
    }
   }
   replace (nw, wa, str);
{
 char *p = strdup (str);
 p = r_str_replace (p, "+ -", "- ", 0);




 if (!strcmp (w1, w2)) {
  char a[32], b[32];
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s +", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s +=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s -", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s -=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s &", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s &=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s |", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s |=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s ^", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s ^=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s >>", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s >>=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
  do { int snprintf_len1_ = snprintf (a, 32, "%s = %s <<", w1, w1); int snprintf_len2_ = snprintf (b, 32, "%s <<=", w1); if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { p = r_str_replace (p, a, b, 0); } } while (0);
 }
 strcpy (str, p);
 free (p);
}
  }
 }
 free (buf);
 return 1;
}
