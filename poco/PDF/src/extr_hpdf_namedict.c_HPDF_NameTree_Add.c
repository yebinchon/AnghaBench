
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* HPDF_String ;
typedef int HPDF_STATUS ;
typedef int HPDF_NameTree ;
typedef scalar_t__ HPDF_INT32 ;
typedef int HPDF_Array ;


 int HPDF_Array_Add (int ,void*) ;
 void* HPDF_Array_GetItem (int ,scalar_t__,int ) ;
 int HPDF_Array_Insert (int ,void*,void*) ;
 scalar_t__ HPDF_Array_Items (int ) ;
 int HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_INVALID_OBJECT ;
 int HPDF_INVALID_PARAMETER ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_STRING ;
 int HPDF_OK ;
 scalar_t__ HPDF_String_Cmp (void*,void*) ;

HPDF_STATUS
HPDF_NameTree_Add (HPDF_NameTree tree,
                    HPDF_String name,
                    void *obj)
{
    HPDF_Array items;
    HPDF_INT32 i, icount;

    if (!tree || !name)
        return HPDF_INVALID_PARAMETER;

    items = HPDF_Dict_GetItem (tree, "Names", HPDF_OCLASS_ARRAY);
    if (!items)
        return HPDF_INVALID_OBJECT;






    icount = HPDF_Array_Items(items);


    if (icount) {
        HPDF_String last = HPDF_Array_GetItem(items, icount - 2, HPDF_OCLASS_STRING);

        if (HPDF_String_Cmp(name, last) > 0) {
            HPDF_Array_Add(items, name);
            HPDF_Array_Add(items, obj);
            return HPDF_OK;
        }
    }



    for (i = icount - 4; i >= 0; i -= 2) {
        HPDF_String elem = HPDF_Array_GetItem(items, i, HPDF_OCLASS_STRING);

        if (i == 0 || HPDF_String_Cmp(name, elem) < 0) {
            HPDF_Array_Insert(items, elem, name);
            HPDF_Array_Insert(items, elem, obj);
            return HPDF_OK;
        }
    }


    HPDF_Array_Add(items, name);
    HPDF_Array_Add(items, obj);
    return HPDF_OK;
}
