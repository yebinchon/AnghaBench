
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_module_entry ;
struct TYPE_4__ {int val; } ;
typedef TYPE_2__ Bucket ;


 scalar_t__ Z_PTR (int ) ;
 int strcasecmp (int ,int ) ;

__attribute__((used)) static int module_name_cmp(const void *a, const void *b)
{
 Bucket *f = (Bucket *) a;
 Bucket *s = (Bucket *) b;

 return strcasecmp( ((zend_module_entry *) Z_PTR(f->val))->name,
      ((zend_module_entry *) Z_PTR(s->val))->name);
}
