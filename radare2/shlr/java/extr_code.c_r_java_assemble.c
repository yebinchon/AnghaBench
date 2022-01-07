
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int name ;
struct TYPE_2__ {int byte; int size; int op_type; int * name; } ;


 TYPE_1__* JAVA_OPS ;
 int isRelative (int ) ;
 int parseJavaArgs (char*,int*,int) ;
 int strcmp (char*,int *) ;
 int strncpy (char*,char const*,int) ;

int r_java_assemble(ut64 addr, ut8 *bytes, const char *string) {
 ut64 args[4] = {0};
 int i, a, b, c, d;
 char name[128];

 strncpy (name, string, sizeof (name) - 1);
 name[sizeof (name) - 1] = 0;

 int nargs = parseJavaArgs (name, args, 4);
 a = args[0];
 b = args[1];
 c = args[2];
 d = args[3];
 for (i = 0; JAVA_OPS[i].name != ((void*)0); i++) {
  if (!strcmp (name, JAVA_OPS[i].name)) {
   bytes[0] = JAVA_OPS[i].byte;
   switch (JAVA_OPS[i].size) {
   case 2: bytes[1] = a;
    break;
   case 3:
    if (nargs == 2) {
     bytes[1] = a;
     bytes[2] = b;
    } else {
     if (isRelative (JAVA_OPS[i].op_type)) {

      a -= addr;
     }
     bytes[1] = (a >> 8) & 0xff;
     bytes[2] = a & 0xff;
    }
    break;
   case 5: bytes[1] = a;
    bytes[2] = b;
    bytes[3] = c;
    bytes[4] = d;
    break;
   }
   return JAVA_OPS[i].size;
  }
 }
 return 0;
}
