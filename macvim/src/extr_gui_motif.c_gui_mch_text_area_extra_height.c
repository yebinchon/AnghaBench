
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dimension ;


 int XmNshadowThickness ;
 int XtVaGetValues (int ,int ,int*,int *) ;
 int textAreaForm ;

int
gui_mch_text_area_extra_height()
{
    Dimension shadowHeight;

    XtVaGetValues(textAreaForm, XmNshadowThickness, &shadowHeight, ((void*)0));
    return shadowHeight;
}
