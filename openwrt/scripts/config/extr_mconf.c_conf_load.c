
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int conf_read (int *) ;
 int dialog_clear () ;
 int * dialog_input_result ;
 int dialog_inputbox (int *,int ,int,int,int ) ;
 int filename ;
 int load_config_help ;
 int load_config_text ;
 int set_config_filename (int *) ;
 int show_helptext (int ,int ) ;
 int show_textbox (int *,int ,int,int) ;
 int sym_set_change_count (int) ;

__attribute__((used)) static void conf_load(void)
{

 while (1) {
  int res;
  dialog_clear();
  res = dialog_inputbox(((void*)0), load_config_text,
          11, 55, filename);
  switch(res) {
  case 0:
   if (!dialog_input_result[0])
    return;
   if (!conf_read(dialog_input_result)) {
    set_config_filename(dialog_input_result);
    sym_set_change_count(1);
    return;
   }
   show_textbox(((void*)0), _("File does not exist!"), 5, 38);
   break;
  case 1:
   show_helptext(_("Load Alternate Configuration"), load_config_help);
   break;
  case 128:
   return;
  }
 }
}
