
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dstvar; int line; int file; int callname; } ;
struct TYPE_9__ {TYPE_1__ lang; TYPE_2__* remit; } ;
struct TYPE_8__ {int size; int (* set_string ) (TYPE_3__*,int ,char*,int) ;int (* comment ) (TYPE_3__*,char*,char*,char*,int ) ;} ;
typedef TYPE_2__ REggEmit ;
typedef TYPE_3__ REgg ;


 int R_FREE (int ) ;
 int eprintf (char*,int ,int ) ;
 int memmove (char*,char*,int) ;
 int r_hex_pair2bin (char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_3__*,char*,char*,char*,int ) ;
 int stub2 (TYPE_3__*,int ,char*,int) ;

__attribute__((used)) static void rcc_pushstr(REgg *egg, char *str, int filter) {
 int dotrim;
 int i, j, len, ch;
 REggEmit *e = egg->remit;

 e->comment (egg, "encode %s string (%s) (%s)",
  filter? "filtered": "unfiltered", str, egg->lang.callname);


 if (filter) {
  for (i = 0; str[i]; i++) {
   dotrim = 0;
   if (str[i] == '\\') {
    switch (str[i + 1]) {
    case 't':
     str[i] = '\t';
     dotrim = 1;
     break;
    case 'n':
     str[i] = '\n';
     dotrim = 1;
     break;
    case 'e':
     str[i] = '\x1b';
     dotrim = 1;
     break;
    case 'x':
     ch = r_hex_pair2bin (str + i + 2);
     if (ch == -1) {
      eprintf ("%s:%d Error string format\n",
       egg->lang.file, egg->lang.line);
     }
     str[i] = (char) ch;
     dotrim = 3;
     break;
    default:
     break;
    }
    if (dotrim) {
     memmove (str + i + 1, str + i + dotrim + 1,
      strlen (str + i + dotrim + 1) + 1);
    }

   }
  }
 }

 len = strlen (str);
 j = (len - len % e->size) + e->size;
 e->set_string (egg, egg->lang.dstvar, str, j);
 R_FREE (egg->lang.dstvar);
}
