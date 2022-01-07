
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error_text; } ;
struct TYPE_5__ {int namelen; int name; } ;
struct TYPE_7__ {TYPE_2__ outputs; int want_errortext; TYPE_1__ inputs; } ;
typedef TYPE_3__ php_stream_xport_param ;


 char* parse_ip_address_ex (int ,int ,int*,int ,int *) ;

__attribute__((used)) static inline char *parse_ip_address(php_stream_xport_param *xparam, int *portno)
{
 return parse_ip_address_ex(xparam->inputs.name, xparam->inputs.namelen, portno, xparam->want_errortext, &xparam->outputs.error_text);
}
