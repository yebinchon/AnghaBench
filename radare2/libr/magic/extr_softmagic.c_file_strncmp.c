
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef char ut64 ;
typedef long ut32 ;


 long STRING_COMPACT_BLANK ;
 long STRING_COMPACT_OPTIONAL_BLANK ;
 long STRING_IGNORE_LOWERCASE ;
 long STRING_IGNORE_UPPERCASE ;
 scalar_t__ islower (int const) ;
 scalar_t__ isspace (int const) ;
 scalar_t__ isupper (int const) ;
 char tolower (int ) ;
 char toupper (int ) ;

__attribute__((used)) static ut64 file_strncmp(const char *s1, const char *s2, size_t len, ut32 flags) {






 const ut8 *a = (const ut8 *)s1;
 const ut8 *b = (const ut8 *)s2;
 ut64 v;





 v = 0;
 if (0L == flags) {
  while (len-- > 0) {
   if ((v = *b++ - *a++) != '\0') {
    break;
   }
  }
 } else {
  while (len-- > 0) {
   if ((flags & STRING_IGNORE_LOWERCASE) &&
       islower(*a)) {
    if ((v = tolower (*b++) - *a++) != '\0') {
     break;
    }
   } else if ((flags & STRING_IGNORE_UPPERCASE) && isupper(*a)) {
    if ((v = toupper (*b++) - *a++) != '\0') {
     break;
    }
   } else if ((flags & STRING_COMPACT_BLANK) && isspace(*a)) {
    a++;
    if (isspace(*b++)) {
     while (isspace (*b)) {
      b++;
     }
    } else {
     v = 1;
     break;
    }
   } else if ((flags & STRING_COMPACT_OPTIONAL_BLANK) && isspace(*a)) {
    a++;
    while (isspace (*b)) {
     b++;
    }
   } else {
    if ((v = *b++ - *a++) != '\0') {
     break;
    }
   }
  }
 }
 return v;
}
