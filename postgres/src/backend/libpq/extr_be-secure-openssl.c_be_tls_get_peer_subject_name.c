
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ peer; } ;
typedef TYPE_1__ Port ;


 int X509_NAME_to_cstring (int ) ;
 int X509_get_subject_name (scalar_t__) ;
 int strlcpy (char*,int ,size_t) ;

void
be_tls_get_peer_subject_name(Port *port, char *ptr, size_t len)
{
 if (port->peer)
  strlcpy(ptr, X509_NAME_to_cstring(X509_get_subject_name(port->peer)), len);
 else
  ptr[0] = '\0';
}
