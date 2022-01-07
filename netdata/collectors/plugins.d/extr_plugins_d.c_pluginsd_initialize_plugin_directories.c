
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DIR ;
 int CONFIG_SECTION_GLOBAL ;
 int FILENAME_MAX ;
 int PLUGINSD_MAX_DIRECTORIES ;
 int PLUGINS_DIR ;
 int config_get (int ,char*,char*) ;
 int config_isspace ;
 scalar_t__ likely (int) ;
 int plugin_directories ;
 int quoted_strings_splitter (char*,int ,int ,int ) ;
 int snprintfz (char*,int,char*,int ,int ) ;
 char* strdupz (int ) ;

inline int pluginsd_initialize_plugin_directories() {
    char plugins_dirs[(FILENAME_MAX * 2) + 1];
    static char *plugins_dir_list = ((void*)0);


    if(likely(!plugins_dir_list)) {
        snprintfz(plugins_dirs, FILENAME_MAX * 2, "\"%s\" \"%s/custom-plugins.d\"", PLUGINS_DIR, CONFIG_DIR);
        plugins_dir_list = strdupz(config_get(CONFIG_SECTION_GLOBAL, "plugins directory", plugins_dirs));
    }


    return quoted_strings_splitter(plugins_dir_list, plugin_directories, PLUGINSD_MAX_DIRECTORIES, config_isspace);
}
