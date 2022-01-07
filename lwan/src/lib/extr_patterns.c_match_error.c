
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_state {char const* error; } ;



__attribute__((used)) static int
match_error(struct match_state *ms, const char *error)
{
 ms->error = ms->error == ((void*)0) ? error : ms->error;
 return (-1);
}
