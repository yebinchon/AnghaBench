
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_section {int dummy; } ;
struct inf_file {char* content; } ;
typedef int HRESULT ;


 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 char* get_next_line (char**,char**) ;
 int inf_section_parse (struct inf_file*,char*,char*,struct inf_section**) ;
 int inf_value_parse (struct inf_section*,char*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static HRESULT inf_process_content(struct inf_file *inf)
{
    struct inf_section *section = ((void*)0);
    char *content = inf->content;
    char *line, *last_chr;
    HRESULT hr = S_OK;

    while (SUCCEEDED(hr) && (line = get_next_line(&content, &last_chr)))
    {
        if (*line == '[')
            hr = inf_section_parse(inf, line, last_chr, &section);
        else if (strchr(line, '=') && section)
            hr = inf_value_parse(section, line);
    }

    return hr;
}
