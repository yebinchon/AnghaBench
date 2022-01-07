
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drxt ;


 int DRXN ;
 int memset (int *,int ,int) ;

void drx_init(drxt *r) {
 memset (r, 0, sizeof (drxt) * (DRXN + 1));
}
