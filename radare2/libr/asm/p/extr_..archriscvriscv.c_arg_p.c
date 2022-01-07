
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void arg_p (char *buf, unsigned long val, const char* const* array, size_t size) {
 const char *s = val >= size || array[val] ? array[val] : "unknown";
 sprintf (buf+strlen (buf), "%s", s);
}
