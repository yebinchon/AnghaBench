
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ stack; } ;
typedef TYPE_2__ zend_worklist ;



__attribute__((used)) static inline int zend_worklist_len(zend_worklist *worklist)
{
 return worklist->stack.len;
}
