
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *time_state_str(int state)
{
 switch (state) {
 case 130: return "TIME_OK";
 case 131: return "TIME_INS";
 case 132: return "TIME_DEL";
 case 129: return "TIME_OOP";
 case 128: return "TIME_WAIT";
 case 133: return "TIME_BAD";
 }
 return "ERROR";
}
