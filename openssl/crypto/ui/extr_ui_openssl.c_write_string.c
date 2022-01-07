
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_STRING ;
typedef int UI ;
 int UI_get0_output_string (int *) ;
 int UI_get_string_type (int *) ;
 int fflush (int ) ;
 int fputs (int ,int ) ;
 int tty_out ;

__attribute__((used)) static int write_string(UI *ui, UI_STRING *uis)
{
    switch (UI_get_string_type(uis)) {
    case 132:
    case 131:
        fputs(UI_get0_output_string(uis), tty_out);
        fflush(tty_out);
        break;
    case 130:
    case 129:
    case 128:
    case 133:
        break;
    }
    return 1;
}
