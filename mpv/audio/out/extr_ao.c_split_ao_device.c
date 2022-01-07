
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ bstr ;


 int bstr0 (char*) ;
 int bstr_split_tok (int ,char*,TYPE_1__*,TYPE_1__*) ;
 char* bstrto0 (void*,TYPE_1__) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void split_ao_device(void *tmp, char *opt, char **out_ao, char **out_dev)
{
    *out_ao = ((void*)0);
    *out_dev = ((void*)0);
    if (!opt)
        return;
    if (!opt[0] || strcmp(opt, "auto") == 0)
        return;

    bstr b_dev, b_ao;
    bstr_split_tok(bstr0(opt), "/", &b_ao, &b_dev);
    if (b_dev.len > 0)
        *out_dev = bstrto0(tmp, b_dev);
    *out_ao = bstrto0(tmp, b_ao);
}
