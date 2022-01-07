
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl_in_use; } ;
typedef int StringInfo ;
typedef TYPE_1__ Port ;


 int SCRAM_SHA_256_NAME ;
 int SCRAM_SHA_256_PLUS_NAME ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,int ) ;

void
pg_be_scram_get_mechanisms(Port *port, StringInfo buf)
{
 appendStringInfoString(buf, SCRAM_SHA_256_NAME);
 appendStringInfoChar(buf, '\0');
}
