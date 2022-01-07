
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_HEALTH ;
 int FILENAME_MAX ;
 char* config_get (int ,char*,char*) ;
 int netdata_configured_stock_config_dir ;
 int snprintfz (char*,int ,char*,int ) ;

inline char *health_stock_config_dir(void) {
    char buffer[FILENAME_MAX + 1];
    snprintfz(buffer, FILENAME_MAX, "%s/health.d", netdata_configured_stock_config_dir);
    return config_get(CONFIG_SECTION_HEALTH, "stock health configuration directory", buffer);
}
