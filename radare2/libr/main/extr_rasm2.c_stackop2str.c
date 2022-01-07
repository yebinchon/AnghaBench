
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char*) ;

__attribute__((used)) static char *stackop2str(int type) {
 switch (type) {
 case 129: return strdup ("null");
 case 130: return strdup ("nop");

 case 131: return strdup ("get");
 case 128: return strdup ("set");
 }
 return strdup ("unknown");
}
