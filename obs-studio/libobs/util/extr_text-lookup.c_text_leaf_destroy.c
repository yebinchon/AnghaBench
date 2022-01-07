
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_leaf {struct text_leaf* value; struct text_leaf* lookup; } ;


 int bfree (struct text_leaf*) ;

__attribute__((used)) static inline void text_leaf_destroy(struct text_leaf *leaf)
{
 if (leaf) {
  bfree(leaf->lookup);
  bfree(leaf->value);
  bfree(leaf);
 }
}
