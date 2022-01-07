
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int * nameserver; } ;


 int MG_FREE (char*) ;
 int * strdup (char const*) ;

void mg_set_nameserver(struct mg_mgr *mgr, const char *nameserver) {
  MG_FREE((char *) mgr->nameserver);
  mgr->nameserver = ((void*)0);
  if (nameserver != ((void*)0)) {
    mgr->nameserver = strdup(nameserver);
  }
}
