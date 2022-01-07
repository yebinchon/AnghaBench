
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RMagic ;


 int errno ;
 int file_error (int *,int ,char*) ;

void file_badread(RMagic *ms) {
 file_error (ms, errno, "error reading");
}
