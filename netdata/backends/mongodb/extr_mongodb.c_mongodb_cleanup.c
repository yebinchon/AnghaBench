
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mongoc_cleanup () ;
 int mongoc_client_destroy (int ) ;
 int mongoc_collection_destroy (int ) ;
 int mongodb_client ;
 int mongodb_collection ;

void mongodb_cleanup() {
    mongoc_collection_destroy(mongodb_collection);
    mongoc_client_destroy(mongodb_client);
    mongoc_cleanup();

    return;
}
