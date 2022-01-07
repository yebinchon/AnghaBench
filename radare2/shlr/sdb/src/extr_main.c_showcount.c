
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int printf (char*,int) ;
 int s ;
 int sdb_free (int ) ;
 int sdb_new (int *,char const*,int ) ;
 scalar_t__ sdb_stats (int ,int*,int *) ;

int showcount(const char *db) {
 ut32 d;
 s = sdb_new (((void*)0), db, 0);
 if (sdb_stats (s, &d, ((void*)0))) {
  printf ("%d\n", d);
 }

 sdb_free (s);
 return 0;
}
