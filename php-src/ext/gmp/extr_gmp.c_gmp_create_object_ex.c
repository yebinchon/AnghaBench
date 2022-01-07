
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
typedef int mpz_ptr ;
struct TYPE_8__ {TYPE_1__ std; int num; } ;
typedef TYPE_2__ gmp_object ;


 TYPE_2__* emalloc (scalar_t__) ;
 int gmp_object_handlers ;
 int mpz_init (int ) ;
 int object_properties_init (TYPE_1__*,int *) ;
 scalar_t__ zend_object_properties_size (int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static inline zend_object *gmp_create_object_ex(zend_class_entry *ce, mpz_ptr *gmpnum_target)
{
 gmp_object *intern = emalloc(sizeof(gmp_object) + zend_object_properties_size(ce));

 zend_object_std_init(&intern->std, ce);
 object_properties_init(&intern->std, ce);

 mpz_init(intern->num);
 *gmpnum_target = intern->num;
 intern->std.handlers = &gmp_object_handlers;

 return &intern->std;
}
