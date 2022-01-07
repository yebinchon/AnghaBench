
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int free (char*) ;
 char* fsname (int *) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 r_return_val_if_fail (b, 0);
 char *p = fsname (b);
 bool hasFs = p != ((void*)0);
 free (p);
 return hasFs;
}
