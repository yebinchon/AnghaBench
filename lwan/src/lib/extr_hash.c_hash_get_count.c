
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {unsigned int count; } ;



unsigned int hash_get_count(const struct hash *hash) { return hash->count; }
