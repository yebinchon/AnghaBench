
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;


 int * EC_KEY_new_by_curve_name_ex (int *,int) ;

EC_KEY *EC_KEY_new_by_curve_name(int nid)
{
    return EC_KEY_new_by_curve_name_ex(((void*)0), nid);
}
