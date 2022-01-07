
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int dummy; } ;
struct config_line {int type; int key; } ;
struct config {int dummy; } ;





 int config_error (struct config*,char*,int ) ;
 int config_last_error (struct config*) ;
 struct config_line* config_read_line (struct config*) ;
 int rewrite_parse_conf_pattern (struct private_data*,struct config*,struct config_line const*) ;
 int streq (int ,char*) ;

__attribute__((used)) static bool rewrite_parse_conf(void *instance, struct config *config)
{
    struct private_data *pd = instance;
    const struct config_line *line;

    while ((line = config_read_line(config))) {
        switch (line->type) {
        case 130:
            config_error(config, "Unknown option: %s", line->key);
            break;
        case 129:
            if (streq(line->key, "pattern")) {
                rewrite_parse_conf_pattern(pd, config, line);
            } else {
                config_error(config, "Unknown section: %s", line->key);
            }
            break;
        case 128:
            break;
        }
    }

    return !config_last_error(config);
}
