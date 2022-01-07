
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_line {int dummy; } ;
struct config {int parser; scalar_t__ error_message; } ;


 struct config_line const* parser_next (int *) ;

const struct config_line *config_read_line(struct config *conf)
{
    return conf->error_message ? ((void*)0) : parser_next(&conf->parser);
}
