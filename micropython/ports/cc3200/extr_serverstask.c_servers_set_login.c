
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SERVERS_USER_PASS_LEN_MAX ;
 int memcpy (int ,char*,scalar_t__) ;
 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;
 int servers_pass ;
 int servers_user ;
 scalar_t__ strlen (char*) ;

void servers_set_login (char *user, char *pass) {
    if (strlen(user) > SERVERS_USER_PASS_LEN_MAX || strlen(pass) > SERVERS_USER_PASS_LEN_MAX) {
        mp_raise_ValueError(mpexception_value_invalid_arguments);
    }
    memcpy(servers_user, user, SERVERS_USER_PASS_LEN_MAX);
    memcpy(servers_pass, pass, SERVERS_USER_PASS_LEN_MAX);
}
