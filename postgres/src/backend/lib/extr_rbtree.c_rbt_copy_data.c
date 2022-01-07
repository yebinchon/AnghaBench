
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ node_size; } ;
typedef TYPE_1__ RBTree ;
typedef int RBTNode ;


 int memcpy (int *,int const*,scalar_t__) ;

__attribute__((used)) static inline void
rbt_copy_data(RBTree *rbt, RBTNode *dest, const RBTNode *src)
{
 memcpy(dest + 1, src + 1, rbt->node_size - sizeof(RBTNode));
}
