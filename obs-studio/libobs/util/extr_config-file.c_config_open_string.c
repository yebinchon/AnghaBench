
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lexer {int dummy; } ;
struct config_data {int dummy; } ;
struct TYPE_6__ {int sections; int * file; } ;
typedef TYPE_1__ config_t ;


 int CONFIG_ERROR ;
 int CONFIG_SUCCESS ;
 int bfree (TYPE_1__*) ;
 TYPE_1__* bzalloc (int) ;
 int init_mutex (TYPE_1__*) ;
 int lexer_free (struct lexer*) ;
 int lexer_init (struct lexer*) ;
 int lexer_start (struct lexer*,char const*) ;
 int parse_config_data (int *,struct lexer*) ;

int config_open_string(config_t **config, const char *str)
{
 struct lexer lex;

 if (!config)
  return CONFIG_ERROR;

 *config = bzalloc(sizeof(struct config_data));
 if (!*config)
  return CONFIG_ERROR;

 if (!init_mutex(*config)) {
  bfree(*config);
  return CONFIG_ERROR;
 }

 (*config)->file = ((void*)0);

 lexer_init(&lex);
 lexer_start(&lex, str);
 parse_config_data(&(*config)->sections, &lex);
 lexer_free(&lex);

 return CONFIG_SUCCESS;
}
