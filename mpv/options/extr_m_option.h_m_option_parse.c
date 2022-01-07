
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_6__ {TYPE_1__* type; } ;
typedef TYPE_2__ m_option_t ;
struct TYPE_5__ {int (* parse ) (struct mp_log*,TYPE_2__ const*,struct bstr,struct bstr,void*) ;} ;


 int stub1 (struct mp_log*,TYPE_2__ const*,struct bstr,struct bstr,void*) ;

__attribute__((used)) static inline int m_option_parse(struct mp_log *log, const m_option_t *opt,
                                 struct bstr name, struct bstr param, void *dst)
{
    return opt->type->parse(log, opt, name, param, dst);
}
