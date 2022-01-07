
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refline_end {scalar_t__ val; } ;



__attribute__((used)) static int cmp_asc(const struct refline_end *a, const struct refline_end *b) {
 return a->val > b->val;
}
