
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RMagic ;


 int errno ;
 int file_error (int *,int ,char*,size_t) ;

void file_oomem(RMagic *ms, size_t len) {
 file_error (ms, errno, "cannot allocate %zu bytes", len);
}
