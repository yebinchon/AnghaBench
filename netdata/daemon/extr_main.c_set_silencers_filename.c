
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_HEALTH ;
 int FILENAME_MAX ;
 int config_get (int ,char*,char*) ;
 int netdata_configured_varlib_dir ;
 int silencers_filename ;
 int snprintfz (char*,int ,char*,int ) ;

void set_silencers_filename() {
    char filename[FILENAME_MAX + 1];
    snprintfz(filename, FILENAME_MAX, "%s/health.silencers.json", netdata_configured_varlib_dir);
    silencers_filename = config_get(CONFIG_SECTION_HEALTH, "silencers file", filename);
}
