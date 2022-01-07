
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {char* sun_path; } ;
struct sockaddr {int sa_family; } ;
struct listening_socket_s {int refcount; int sock; int type; int key; } ;
struct TYPE_3__ {unsigned int used; struct listening_socket_s* data; } ;







 int INET6_ADDRSTRLEN ;
 char* alloca (int ) ;
 struct listening_socket_s* fpm_array_push (TYPE_1__*) ;
 int fpm_get_in_addr (struct sockaddr*) ;
 int fpm_get_in_port (struct sockaddr*) ;
 int inet_ntop (int ,int ,char*,int ) ;
 TYPE_1__ sockets_list ;
 int sprintf (char*,char*,int) ;
 int strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static int fpm_sockets_hash_op(int sock, struct sockaddr *sa, char *key, int type, int op)
{
 if (key == ((void*)0)) {
  switch (type) {
   case 132 : {
    key = alloca(INET6_ADDRSTRLEN+10);
    inet_ntop(sa->sa_family, fpm_get_in_addr(sa), key, INET6_ADDRSTRLEN);
    sprintf(key+strlen(key), ":%d", fpm_get_in_port(sa));
    break;
   }

   case 131 : {
    struct sockaddr_un *sa_un = (struct sockaddr_un *) sa;
    key = alloca(strlen(sa_un->sun_path) + 1);
    strcpy(key, sa_un->sun_path);
    break;
   }

   default :
    return -1;
  }
 }

 switch (op) {

  case 130 :
  {
   unsigned i;
   struct listening_socket_s *ls = sockets_list.data;

   for (i = 0; i < sockets_list.used; i++, ls++) {
    if (!strcmp(ls->key, key)) {
     ++ls->refcount;
     return ls->sock;
    }
   }
   break;
  }

  case 129 :
  case 128 :
  {
   struct listening_socket_s *ls;

   ls = fpm_array_push(&sockets_list);
   if (!ls) {
    break;
   }

   if (op == 129) {
    ls->refcount = 0;
   } else {
    ls->refcount = 1;
   }
   ls->type = type;
   ls->sock = sock;
   ls->key = strdup(key);

   return 0;
  }
 }
 return -1;
}
