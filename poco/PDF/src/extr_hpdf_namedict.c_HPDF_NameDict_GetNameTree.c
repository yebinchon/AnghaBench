
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HPDF_NameTree ;
typedef size_t HPDF_NameDictKey ;
typedef int HPDF_NameDict ;


 int * HPDF_Dict_GetItem (int ,int ,int ) ;
 int * HPDF_NAMEDICT_KEYS ;
 int HPDF_OCLASS_DICT ;

HPDF_NameTree
HPDF_NameDict_GetNameTree (HPDF_NameDict namedict,
                            HPDF_NameDictKey key)
{
    if (!namedict)
        return ((void*)0);
    return HPDF_Dict_GetItem (namedict, HPDF_NAMEDICT_KEYS[key], HPDF_OCLASS_DICT);
}
