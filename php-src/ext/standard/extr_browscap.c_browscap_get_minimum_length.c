
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t prefix_len; scalar_t__* contains_len; } ;
typedef TYPE_1__ browscap_entry ;


 int BROWSCAP_NUM_CONTAINS ;

__attribute__((used)) static inline size_t browscap_get_minimum_length(browscap_entry *entry) {
 size_t len = entry->prefix_len;
 int i;
 for (i = 0; i < BROWSCAP_NUM_CONTAINS; i++) {
  len += entry->contains_len[i];
 }
 return len;
}
