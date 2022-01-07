
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_name; } ;


 struct protoent* getprotobynumber (int) ;
 char const** oproto_services ;
 char* strdup (int ) ;

const char *
oproto_service_name(int port)
{
    if (oproto_services[port])
        return oproto_services[port];
    {
        struct protoent *result;

        result = getprotobynumber(port);

        if (result == 0)
            return "unknown";

        return oproto_services[port] = strdup(result->p_name);
    }
}
