
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct len_pos_t {scalar_t__ pos; } ;



__attribute__((used)) static int RM_listcmp(const struct len_pos_t *a, const struct len_pos_t *b) {
 return a->pos < b->pos;
}
