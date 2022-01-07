
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int UIT_BOOLEAN ;
 int general_allocate_boolean (int *,char const*,char const*,char const*,char const*,int ,int ,int,char*) ;

int UI_add_input_boolean(UI *ui, const char *prompt, const char *action_desc,
                         const char *ok_chars, const char *cancel_chars,
                         int flags, char *result_buf)
{
    return general_allocate_boolean(ui, prompt, action_desc,
                                    ok_chars, cancel_chars, 0, UIT_BOOLEAN,
                                    flags, result_buf);
}
