
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef int HPDF_NameTree ;
typedef size_t HPDF_NameDictKey ;
typedef int HPDF_NameDict ;


 int HPDF_Dict_Add (int ,int ,int ) ;
 int * HPDF_NAMEDICT_KEYS ;

HPDF_STATUS
HPDF_NameDict_SetNameTree (HPDF_NameDict namedict,
                            HPDF_NameDictKey key,
                            HPDF_NameTree ntree)
{
    return HPDF_Dict_Add (namedict, HPDF_NAMEDICT_KEYS[key], ntree);
}
