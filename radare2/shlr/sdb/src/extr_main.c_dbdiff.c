
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int dbdiff_cb ;
 int sdb_diff (int *,int *,int ,int *) ;
 int sdb_free (int *) ;
 int * sdb_new (int *,char const*,int ) ;

__attribute__((used)) static bool dbdiff(const char *a, const char *b) {
 Sdb *A = sdb_new (((void*)0), a, 0);
 Sdb *B = sdb_new (((void*)0), b, 0);
 bool equal = sdb_diff (A, B, dbdiff_cb, ((void*)0));
 sdb_free (A);
 sdb_free (B);
 return equal;
}
