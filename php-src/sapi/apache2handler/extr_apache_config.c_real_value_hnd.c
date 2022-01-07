
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; int htaccess; int value_len; int value; } ;
typedef TYPE_1__ php_dir_entry ;
struct TYPE_7__ {int config; } ;
typedef TYPE_2__ php_conf_rec ;
typedef int e ;
struct TYPE_8__ {int override; int pool; } ;
typedef TYPE_3__ cmd_parms ;


 int ACCESS_CONF ;
 int RSRC_CONF ;
 int apr_pstrdup (int ,char const*) ;
 int phpapdebug (int ) ;
 int stderr ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;
 int zend_hash_num_elements (int *) ;
 int zend_hash_str_update_mem (int *,char*,int ,TYPE_1__*,int) ;

__attribute__((used)) static const char *real_value_hnd(cmd_parms *cmd, void *dummy, const char *name, const char *value, int status)
{
 php_conf_rec *d = dummy;
 php_dir_entry e;

 phpapdebug((stderr, "Getting %s=%s for %p (%d)\n", name, value, dummy, zend_hash_num_elements(&d->config)));

 if (!strncasecmp(value, "none", sizeof("none"))) {
  value = "";
 }

 e.value = apr_pstrdup(cmd->pool, value);
 e.value_len = strlen(value);
 e.status = status;
 e.htaccess = ((cmd->override & (RSRC_CONF|ACCESS_CONF)) == 0);

 zend_hash_str_update_mem(&d->config, (char *) name, strlen(name), &e, sizeof(e));
 return ((void*)0);
}
