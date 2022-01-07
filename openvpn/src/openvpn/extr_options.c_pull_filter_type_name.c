
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUF_TYPE_ACCEPT ;
 int PUF_TYPE_IGNORE ;
 int PUF_TYPE_REJECT ;

__attribute__((used)) static const char *
pull_filter_type_name(int type)
{
    if (type == PUF_TYPE_ACCEPT)
    {
        return "accept";
    }
    if (type == PUF_TYPE_IGNORE)
    {
        return "ignore";
    }
    if (type == PUF_TYPE_REJECT)
    {
        return "reject";
    }
    else
    {
        return "???";
    }
}
