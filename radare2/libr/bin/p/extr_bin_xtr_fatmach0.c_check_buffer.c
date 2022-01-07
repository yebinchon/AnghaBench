
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int checkHeader (int *) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer (RBuffer *buf) {
 r_return_val_if_fail (buf, 0);
 return checkHeader (buf);
}
