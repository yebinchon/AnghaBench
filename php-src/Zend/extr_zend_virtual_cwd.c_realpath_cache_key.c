
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;


 int Z_UL (int) ;

__attribute__((used)) static inline zend_ulong realpath_cache_key(const char *path, size_t path_len)
{
 register zend_ulong h;
 const char *e = path + path_len;

 for (h = Z_UL(2166136261); path < e;) {
  h *= Z_UL(16777619);
  h ^= *path++;
 }

 return h;
}
