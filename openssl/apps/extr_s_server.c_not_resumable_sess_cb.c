
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;



__attribute__((used)) static int not_resumable_sess_cb(SSL *s, int is_forward_secure)
{

    return is_forward_secure;
}
