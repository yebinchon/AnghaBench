
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_state {int error; int arg; int config; } ;


 int BSTR_P (int ) ;
 int MP_FATAL (int ,char*,int ,int ) ;
 int m_option_strerror (int) ;
 int split_opt_silent (struct parse_state*) ;

__attribute__((used)) static bool split_opt(struct parse_state *p)
{
    int r = split_opt_silent(p);
    if (r >= 0)
        return r == 0;
    p->error = 1;

    MP_FATAL(p->config, "Error parsing commandline option %.*s: %s\n",
             BSTR_P(p->arg), m_option_strerror(r));
    return 0;
}
