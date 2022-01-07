
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ count; } ;



__attribute__((used)) static inline void init_completion(struct completion *c)
{
 c->count = 0;
}
