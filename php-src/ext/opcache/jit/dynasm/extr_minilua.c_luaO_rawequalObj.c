
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;


 int bvalue (int const*) ;
 int gcvalue (int const*) ;
 int luai_numeq (int ,int ) ;
 int nvalue (int const*) ;
 int pvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static int luaO_rawequalObj(const TValue*t1,const TValue*t2){
if(ttype(t1)!=ttype(t2))return 0;
else switch(ttype(t1)){
case 0:
return 1;
case 3:
return luai_numeq(nvalue(t1),nvalue(t2));
case 1:
return bvalue(t1)==bvalue(t2);
case 2:
return pvalue(t1)==pvalue(t2);
default:
return gcvalue(t1)==gcvalue(t2);
}
}
