
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_session {TYPE_1__* opt; } ;
struct TYPE_2__ {char const* local_options; } ;


 char const* ssl_default_options_string ;

__attribute__((used)) static inline const char *
local_options_string(const struct tls_session *session)
{



    return ssl_default_options_string;

}
