
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ std_strings; int searchpath; int encoding; TYPE_2__* ropt; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
struct TYPE_7__ {scalar_t__ enable_row_security; scalar_t__ use_role; } ;
typedef TYPE_2__ RestoreOptions ;
typedef TYPE_3__ ArchiveHandle ;


 int ahprintf (TYPE_3__*,char*,...) ;
 int fmtId (scalar_t__) ;
 int pg_encoding_to_char (int ) ;

__attribute__((used)) static void
_doSetFixedOutputState(ArchiveHandle *AH)
{
 RestoreOptions *ropt = AH->public.ropt;




 ahprintf(AH, "SET statement_timeout = 0;\n");
 ahprintf(AH, "SET lock_timeout = 0;\n");
 ahprintf(AH, "SET idle_in_transaction_session_timeout = 0;\n");


 ahprintf(AH, "SET client_encoding = '%s';\n",
    pg_encoding_to_char(AH->public.encoding));


 ahprintf(AH, "SET standard_conforming_strings = %s;\n",
    AH->public.std_strings ? "on" : "off");


 if (ropt && ropt->use_role)
  ahprintf(AH, "SET ROLE %s;\n", fmtId(ropt->use_role));


 if (AH->public.searchpath)
  ahprintf(AH, "%s", AH->public.searchpath);


 ahprintf(AH, "SET check_function_bodies = false;\n");


 ahprintf(AH, "SET xmloption = content;\n");


 ahprintf(AH, "SET client_min_messages = warning;\n");
 if (!AH->public.std_strings)
  ahprintf(AH, "SET escape_string_warning = off;\n");


 if (ropt && ropt->enable_row_security)
  ahprintf(AH, "SET row_security = on;\n");
 else
  ahprintf(AH, "SET row_security = off;\n");

 ahprintf(AH, "\n");
}
