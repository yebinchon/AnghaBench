
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int astrcmp (char const*,char const*) ;

__attribute__((used)) static inline int cstring_cmp(const void *a, const void *b) {
 const char **va = (const char **)a;
 const char **vb = (const char **)b;
 return astrcmp (*va, *vb);
}
