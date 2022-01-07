
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {scalar_t__ h; scalar_t__ len; int l; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) inline static int cmp(struct line *a, struct line *b) {
 return a->h != b->h || a->len != b->len || memcmp(a->l, b->l, a->len);
}
