
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* delspc (char const*) ;

__attribute__((used)) static int has_argument(const char **p) {
 const char *q = delspc (*p);
 return *q == ',';
}
