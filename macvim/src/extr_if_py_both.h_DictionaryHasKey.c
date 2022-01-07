
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int DICT_FLAG_RETURN_BOOL ;
 int * _DictionaryItem (int *,int *,int ) ;

__attribute__((used)) static PyObject *
DictionaryHasKey(DictionaryObject *self, PyObject *keyObject)
{
    return _DictionaryItem(self, keyObject, DICT_FLAG_RETURN_BOOL);
}
