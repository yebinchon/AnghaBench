
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct server_info {int owner; int scope; } ;
struct list_entry {int dummy; } ;
struct TYPE_3__ {int owner; int scope; } ;
typedef TYPE_1__ nfs41_server ;


 int NFS4_OPAQUE_LIMIT ;
 TYPE_1__* server_entry (struct list_entry const*) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int server_compare(
    const struct list_entry *entry,
    const void *value)
{
    const nfs41_server *server = server_entry(entry);
    const struct server_info *info = (const struct server_info*)value;
    const int diff = strncmp(server->scope, info->scope, NFS4_OPAQUE_LIMIT);
    return diff ? diff : strncmp(server->owner, info->owner, NFS4_OPAQUE_LIMIT);
}
