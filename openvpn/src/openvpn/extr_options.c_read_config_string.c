
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct options {int gc; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef int line ;


 int CLEAR (char**) ;
 int MAX_PARMS ;
 int OPTION_LINE_SIZE ;
 scalar_t__ SIZE (char**) ;
 int add_option (struct options*,char**,char const*,int,int ,int const,unsigned int const,unsigned int*,struct env_set*) ;
 scalar_t__ buf_parse (struct buffer*,char,char*,int) ;
 int buf_set_read (struct buffer*,int *,int ) ;
 int bypass_doubledash (char**) ;
 int check_inline_file_via_buf (struct buffer*,char**,int *) ;
 scalar_t__ parse_line (char*,char**,scalar_t__,char const*,int,int const,int *) ;
 int secure_memzero (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
read_config_string(const char *prefix,
                   struct options *options,
                   const char *config,
                   const int msglevel,
                   const unsigned int permission_mask,
                   unsigned int *option_types_found,
                   struct env_set *es)
{
    char line[OPTION_LINE_SIZE];
    struct buffer multiline;
    int line_num = 0;

    buf_set_read(&multiline, (uint8_t *)config, strlen(config));

    while (buf_parse(&multiline, '\n', line, sizeof(line)))
    {
        char *p[MAX_PARMS+1];
        CLEAR(p);
        ++line_num;
        if (parse_line(line, p, SIZE(p)-1, prefix, line_num, msglevel, &options->gc))
        {
            bypass_doubledash(&p[0]);
            check_inline_file_via_buf(&multiline, p, &options->gc);
            add_option(options, p, prefix, line_num, 0, msglevel, permission_mask, option_types_found, es);
        }
        CLEAR(p);
    }
    secure_memzero(line, sizeof(line));
}
