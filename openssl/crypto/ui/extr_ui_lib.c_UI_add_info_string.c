
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int UIT_INFO ;
 int general_allocate_string (int *,char const*,int ,int ,int ,int *,int ,int ,int *) ;

int UI_add_info_string(UI *ui, const char *text)
{
    return general_allocate_string(ui, text, 0, UIT_INFO, 0, ((void*)0), 0, 0,
                                   ((void*)0));
}
