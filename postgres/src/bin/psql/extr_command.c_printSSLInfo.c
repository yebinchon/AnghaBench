
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 char* PQsslAttribute (int ,char*) ;
 int PQsslInUse (int ) ;
 char* _ (char*) ;
 int printf (char*,char const*,char const*,char const*,char*) ;
 TYPE_1__ pset ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
printSSLInfo(void)
{
 const char *protocol;
 const char *cipher;
 const char *bits;
 const char *compression;

 if (!PQsslInUse(pset.db))
  return;

 protocol = PQsslAttribute(pset.db, "protocol");
 cipher = PQsslAttribute(pset.db, "cipher");
 bits = PQsslAttribute(pset.db, "key_bits");
 compression = PQsslAttribute(pset.db, "compression");

 printf(_("SSL connection (protocol: %s, cipher: %s, bits: %s, compression: %s)\n"),
     protocol ? protocol : _("unknown"),
     cipher ? cipher : _("unknown"),
     bits ? bits : _("unknown"),
     (compression && strcmp(compression, "off") != 0) ? _("on") : _("off"));
}
