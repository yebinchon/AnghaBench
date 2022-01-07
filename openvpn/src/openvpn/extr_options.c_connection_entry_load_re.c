
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_entry {scalar_t__ proto; scalar_t__ af; scalar_t__ remote_port; scalar_t__ remote; } ;
struct connection_entry {scalar_t__ proto; scalar_t__ af; scalar_t__ remote_port; scalar_t__ remote; } ;



__attribute__((used)) static void
connection_entry_load_re(struct connection_entry *ce, const struct remote_entry *re)
{
    if (re->remote)
    {
        ce->remote = re->remote;
    }
    if (re->remote_port)
    {
        ce->remote_port = re->remote_port;
    }
    if (re->proto >= 0)
    {
        ce->proto = re->proto;
    }
    if (re->af > 0)
    {
        ce->af = re->af;
    }
}
