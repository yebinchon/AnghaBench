
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cli_completion_generator ;
 char** rl_completion_matches (char const*,int ) ;

__attribute__((used)) static char **cli_code_completion(const char *text, int start, int end)
{
 return rl_completion_matches(text, cli_completion_generator);
}
