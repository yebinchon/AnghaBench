
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ libgdbr_t ;


 int free (char*) ;
 int send_ack (TYPE_1__*) ;
 char* strdup (int *) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strtok (char*,char*) ;

int handle_qStatus(libgdbr_t *g) {
 if (!g || !g->data || !*g->data) {
  return -1;
 }
 char *data = strdup (g->data);
 char *tok = strtok (data, ";");
 if (!tok) {
  free (data);
  return -1;
 }

 if (strncmp (tok, "T0", 2)) {
  send_ack (g);
  free (data);
  return -1;
 }

 while (tok != ((void*)0)) {
  if (!strncmp (tok, "tnotrun:0", 9)) {
   free (data);
   return send_ack (g);
  }
  tok = strtok (((void*)0), ";");
 }
 send_ack (g);
 free (data);
 return -1;
}
