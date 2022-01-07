
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instr_time ;


 double INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;

__attribute__((used)) static double
elapsed_time(instr_time *starttime)
{
 instr_time endtime;

 INSTR_TIME_SET_CURRENT(endtime);
 INSTR_TIME_SUBTRACT(endtime, *starttime);
 return INSTR_TIME_GET_DOUBLE(endtime);
}
