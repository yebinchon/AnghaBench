
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* findEnd (char*) ;
 int free (char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void insert(char *dst, const char *src) {
 char *endNum = findEnd (dst);
 strcpy (dst, src);
 strcpy (dst + strlen (src), endNum);
 free (endNum);
}
