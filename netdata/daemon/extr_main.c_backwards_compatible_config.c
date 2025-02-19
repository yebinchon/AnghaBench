
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_BACKEND ;
 int CONFIG_SECTION_GLOBAL ;
 int CONFIG_SECTION_WEB ;
 int config_move (int ,char*,int ,char*) ;

__attribute__((used)) static void backwards_compatible_config() {

    config_move(CONFIG_SECTION_GLOBAL, "http port listen backlog",
                CONFIG_SECTION_WEB, "listen backlog");

    config_move(CONFIG_SECTION_GLOBAL, "bind socket to IP",
                CONFIG_SECTION_WEB, "bind to");

    config_move(CONFIG_SECTION_GLOBAL, "bind to",
                CONFIG_SECTION_WEB, "bind to");

    config_move(CONFIG_SECTION_GLOBAL, "port",
                CONFIG_SECTION_WEB, "default port");

    config_move(CONFIG_SECTION_GLOBAL, "default port",
                CONFIG_SECTION_WEB, "default port");

    config_move(CONFIG_SECTION_GLOBAL, "disconnect idle web clients after seconds",
                CONFIG_SECTION_WEB, "disconnect idle clients after seconds");

    config_move(CONFIG_SECTION_GLOBAL, "respect web browser do not track policy",
                CONFIG_SECTION_WEB, "respect do not track policy");

    config_move(CONFIG_SECTION_GLOBAL, "web x-frame-options header",
                CONFIG_SECTION_WEB, "x-frame-options response header");

    config_move(CONFIG_SECTION_GLOBAL, "enable web responses gzip compression",
                CONFIG_SECTION_WEB, "enable gzip compression");

    config_move(CONFIG_SECTION_GLOBAL, "web compression strategy",
                CONFIG_SECTION_WEB, "gzip compression strategy");

    config_move(CONFIG_SECTION_GLOBAL, "web compression level",
                CONFIG_SECTION_WEB, "gzip compression level");

    config_move(CONFIG_SECTION_GLOBAL, "web files owner",
                CONFIG_SECTION_WEB, "web files owner");

    config_move(CONFIG_SECTION_GLOBAL, "web files group",
                CONFIG_SECTION_WEB, "web files group");

    config_move(CONFIG_SECTION_BACKEND, "opentsdb host tags",
                CONFIG_SECTION_BACKEND, "host tags");
}
