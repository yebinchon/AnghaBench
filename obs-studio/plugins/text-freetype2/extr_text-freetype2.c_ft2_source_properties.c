
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int OBS_PATH_FILE ;
 int OBS_TEXT_MULTILINE ;
 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_color (int *,char*,int ) ;
 int obs_properties_add_font (int *,char*,int ) ;
 int obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int obs_properties_add_path (int *,char*,int ,int ,int ,int *) ;
 int obs_properties_add_text (int *,char*,int ,int ) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *ft2_source_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();
 obs_properties_add_font(props, "font", obs_module_text("Font"));

 obs_properties_add_text(props, "text", obs_module_text("Text"),
    OBS_TEXT_MULTILINE);

 obs_properties_add_bool(props, "from_file",
    obs_module_text("ReadFromFile"));

 obs_properties_add_bool(props, "log_mode",
    obs_module_text("ChatLogMode"));

 obs_properties_add_int(props, "log_lines",
          obs_module_text("ChatLogLines"), 1, 1000, 1);

 obs_properties_add_path(props, "text_file", obs_module_text("TextFile"),
    OBS_PATH_FILE,
    obs_module_text("TextFileFilter"), ((void*)0));

 obs_properties_add_color(props, "color1", obs_module_text("Color1"));

 obs_properties_add_color(props, "color2", obs_module_text("Color2"));

 obs_properties_add_bool(props, "outline", obs_module_text("Outline"));

 obs_properties_add_bool(props, "drop_shadow",
    obs_module_text("DropShadow"));

 obs_properties_add_int(props, "custom_width",
          obs_module_text("CustomWidth"), 0, 4096, 1);

 obs_properties_add_bool(props, "word_wrap",
    obs_module_text("WordWrap"));

 return props;
}
