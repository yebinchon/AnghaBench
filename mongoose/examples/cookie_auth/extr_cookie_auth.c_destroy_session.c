
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int user; } ;


 int free (int ) ;
 int memset (struct session*,int ,int) ;

__attribute__((used)) static void destroy_session(struct session *s) {
  free(s->user);
  memset(s, 0, sizeof(*s));
}
