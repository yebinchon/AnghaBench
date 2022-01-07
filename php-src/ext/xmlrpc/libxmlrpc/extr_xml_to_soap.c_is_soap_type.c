
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static inline int is_soap_type(const char* soap_type) {
 return(strstr(soap_type, "SOAP-ENC:") || strstr(soap_type, "xsd:")) ? 1 : 0;
}
