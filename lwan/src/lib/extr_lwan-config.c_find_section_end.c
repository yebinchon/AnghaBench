
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_line {scalar_t__ type; } ;
struct config {int parser; scalar_t__ error_message; } ;


 scalar_t__ CONFIG_LINE_TYPE_SECTION ;
 scalar_t__ CONFIG_LINE_TYPE_SECTION_END ;
 struct config_line* parser_next (int *) ;

__attribute__((used)) static bool find_section_end(struct config *config)
{
    const struct config_line *line;
    int cur_level = 1;

    if (config->error_message)
        return 0;

    while ((line = parser_next(&config->parser))) {
        if (line->type == CONFIG_LINE_TYPE_SECTION) {
            cur_level++;
        } else if (line->type == CONFIG_LINE_TYPE_SECTION_END) {
            cur_level--;

            if (!cur_level)
                return 1;
        }
    }

    return 0;
}
