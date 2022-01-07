
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_close (void*) ;

void db_close(void **db_handle) {
  if (db_handle != ((void*)0) && *db_handle != ((void*)0)) {
    sqlite3_close(*db_handle);
    *db_handle = ((void*)0);
  }
}
