
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_source2 {int server; int client; } ;


 int key_source_print (int *,char*) ;

__attribute__((used)) static void
key_source2_print(const struct key_source2 *k)
{
    key_source_print(&k->client, "Client");
    key_source_print(&k->server, "Server");
}
