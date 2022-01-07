
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ead_msg_auth {int data; } ;


 struct ead_msg_auth* EAD_DATA (int ,int ) ;
 struct ead_msg_auth* auth ;
 int fprintf (int ,char*) ;
 int msg ;
 int stderr ;
 scalar_t__ t_clientverify (int ,int ) ;
 int tc ;

__attribute__((used)) static bool
handle_done_auth(void)
{
 struct ead_msg_auth *auth = EAD_DATA(msg, auth);
 if (t_clientverify(tc, auth->data) != 0) {
  fprintf(stderr, "Client auth verify failed\n");
  return 0;
 }
 return 1;
}
