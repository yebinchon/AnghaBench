
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int * DictionaryListObjects (int *,int ) ;
 int dict_val ;

__attribute__((used)) static PyObject *
DictionaryListValues(DictionaryObject *self)
{
    return DictionaryListObjects(self, dict_val);
}
