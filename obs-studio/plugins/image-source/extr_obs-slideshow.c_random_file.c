
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; } ;
struct slideshow {TYPE_1__ files; } ;


 scalar_t__ rand () ;

__attribute__((used)) static inline size_t random_file(struct slideshow *ss)
{
 return (size_t)rand() % ss->files.num;
}
