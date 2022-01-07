
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int count; } ;



__attribute__((used)) static inline bool completion_done(struct completion *c)
{
 return c->count;
}
