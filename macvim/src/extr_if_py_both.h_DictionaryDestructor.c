
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dict; int ref; } ;
typedef TYPE_1__ DictionaryObject ;


 int DESTRUCTOR_FINISH (TYPE_1__*) ;
 int dict_unref (int ) ;
 int lastdict ;
 int pyll_remove (int *,int *) ;

__attribute__((used)) static void
DictionaryDestructor(DictionaryObject *self)
{
    pyll_remove(&self->ref, &lastdict);
    dict_unref(self->dict);

    DESTRUCTOR_FINISH(self);
}
