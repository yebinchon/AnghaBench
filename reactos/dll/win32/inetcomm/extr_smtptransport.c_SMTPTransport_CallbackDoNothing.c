
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetTransport ;


 int TRACE (char*) ;

__attribute__((used)) static void SMTPTransport_CallbackDoNothing(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    TRACE("\n");
}
