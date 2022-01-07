
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sequence_data; int enable_row_security; int include_everything; int lockWaitTimeout; int no_subscriptions; int no_security_labels; int no_publications; int no_comments; int dump_inserts; int disable_dollar_quoting; int use_setsessauth; int disable_triggers; int outputNoTablespaces; int outputNoOwner; int outputCreateDB; int outputSuperuser; int aclsSkip; int dumpSections; int column_inserts; int if_exists; int schemaOnly; int dataOnly; int outputClean; } ;
struct TYPE_6__ {int sequence_data; int enable_row_security; int include_everything; int lockWaitTimeout; int no_subscriptions; int no_security_labels; int no_publications; int no_comments; int dump_inserts; int disable_dollar_quoting; int use_setsessauth; int disable_triggers; int noTablespace; int noOwner; int createDB; int superuser; int aclsSkip; int dumpSections; int column_inserts; int if_exists; int schemaOnly; int dataOnly; int dropSchema; } ;
typedef TYPE_1__ RestoreOptions ;
typedef TYPE_2__ DumpOptions ;


 TYPE_2__* NewDumpOptions () ;

DumpOptions *
dumpOptionsFromRestoreOptions(RestoreOptions *ropt)
{
 DumpOptions *dopt = NewDumpOptions();


 dopt->outputClean = ropt->dropSchema;
 dopt->dataOnly = ropt->dataOnly;
 dopt->schemaOnly = ropt->schemaOnly;
 dopt->if_exists = ropt->if_exists;
 dopt->column_inserts = ropt->column_inserts;
 dopt->dumpSections = ropt->dumpSections;
 dopt->aclsSkip = ropt->aclsSkip;
 dopt->outputSuperuser = ropt->superuser;
 dopt->outputCreateDB = ropt->createDB;
 dopt->outputNoOwner = ropt->noOwner;
 dopt->outputNoTablespaces = ropt->noTablespace;
 dopt->disable_triggers = ropt->disable_triggers;
 dopt->use_setsessauth = ropt->use_setsessauth;
 dopt->disable_dollar_quoting = ropt->disable_dollar_quoting;
 dopt->dump_inserts = ropt->dump_inserts;
 dopt->no_comments = ropt->no_comments;
 dopt->no_publications = ropt->no_publications;
 dopt->no_security_labels = ropt->no_security_labels;
 dopt->no_subscriptions = ropt->no_subscriptions;
 dopt->lockWaitTimeout = ropt->lockWaitTimeout;
 dopt->include_everything = ropt->include_everything;
 dopt->enable_row_security = ropt->enable_row_security;
 dopt->sequence_data = ropt->sequence_data;

 return dopt;
}
