
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdb_grep_dump (char const*,int,int,char const*) ;

__attribute__((used)) static int sdb_grep(const char *db, int fmt, const char *grep) {
 return sdb_grep_dump (db, fmt, 1, grep);
}
