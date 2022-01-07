
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ead_msg_salt {int len; int prime; int ext_salt; int salt; } ;
struct TYPE_7__ {int len; scalar_t__* data; } ;
struct TYPE_6__ {int generator; int modulus; } ;


 scalar_t__ EAD_AUTH_MD5 ;
 struct ead_msg_salt* EAD_DATA (int ,TYPE_3__) ;
 int MAXSALTLEN ;
 scalar_t__ auth_type ;
 int fprintf (int ,char*) ;
 int memcpy (scalar_t__*,int ,int) ;
 int msg ;
 scalar_t__* pw_salt ;
 TYPE_3__ salt ;
 int stderr ;
 int t_clientopen (int ,int *,int *,TYPE_3__*) ;
 TYPE_1__* t_getpreparam (int ) ;
 int tc ;
 TYPE_1__* tcp ;
 int username ;

__attribute__((used)) static bool
handle_prime(void)
{
 struct ead_msg_salt *sb = EAD_DATA(msg, salt);

 salt.len = sb->len;
 memcpy(salt.data, sb->salt, salt.len);

 if (auth_type == EAD_AUTH_MD5) {
  memcpy(pw_salt, sb->ext_salt, MAXSALTLEN);
  pw_salt[MAXSALTLEN - 1] = 0;
 }

 tcp = t_getpreparam(sb->prime);
 tc = t_clientopen(username, &tcp->modulus, &tcp->generator, &salt);
 if (!tc) {
  fprintf(stderr, "Client open failed\n");
  return 0;
 }

 return 1;
}
