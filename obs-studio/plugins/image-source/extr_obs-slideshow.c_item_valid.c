
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct slideshow {scalar_t__ cur_item; TYPE_1__ files; } ;



__attribute__((used)) static inline bool item_valid(struct slideshow *ss)
{
 return ss->files.num && ss->cur_item < ss->files.num;
}
