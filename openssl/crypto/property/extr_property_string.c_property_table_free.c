
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROP_TABLE ;


 int lh_PROPERTY_STRING_doall (int *,int *) ;
 int lh_PROPERTY_STRING_free (int *) ;
 int property_free ;

__attribute__((used)) static void property_table_free(PROP_TABLE **pt)
{
    PROP_TABLE *t = *pt;

    if (t != ((void*)0)) {
        lh_PROPERTY_STRING_doall(t, &property_free);
        lh_PROPERTY_STRING_free(t);
        *pt = ((void*)0);
    }
}
