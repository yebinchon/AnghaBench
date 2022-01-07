
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DateTime ;


 int computeHMS (int *) ;
 int computeYMD (int *) ;

__attribute__((used)) static void computeYMD_HMS(DateTime *p){
  computeYMD(p);
  computeHMS(p);
}
