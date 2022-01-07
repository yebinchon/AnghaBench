
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* pszVal; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_9__ {TYPE_2__ value; } ;
typedef TYPE_3__ header_t ;
struct TYPE_10__ {int encoding; } ;
typedef TYPE_4__ MimeBody ;


 int FIXME (char*,int ) ;
 int IET_7BIT ;
 int IET_8BIT ;
 int IET_BASE64 ;
 int IET_QP ;
 int _strnicmp (char const*,char*,int) ;
 int debugstr_a (char const*) ;

__attribute__((used)) static void init_content_encoding(MimeBody *body, header_t *header)
{
    const char *encoding = header->value.u.pszVal;

    if(!_strnicmp(encoding, "base64", -1))
        body->encoding = IET_BASE64;
    else if(!_strnicmp(encoding, "quoted-printable", -1))
        body->encoding = IET_QP;
    else if(!_strnicmp(encoding, "7bit", -1))
        body->encoding = IET_7BIT;
    else if(!_strnicmp(encoding, "8bit", -1))
        body->encoding = IET_8BIT;
    else
        FIXME("unknown encoding %s\n", debugstr_a(encoding));
}
