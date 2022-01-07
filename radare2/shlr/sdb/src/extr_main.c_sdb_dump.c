
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdb_grep_dump (char const*,int,int,int *) ;

__attribute__((used)) static int sdb_dump(const char *db, int fmt) {
 return sdb_grep_dump (db, fmt, 0, ((void*)0));
}
