
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int buf ;


 scalar_t__ IS_ARRAY ;
 int * PG (int ) ;
 size_t TRACK_VARS_ENV ;
 size_t TRACK_VARS_SERVER ;
 int ZVAL_DUP (int *,int *) ;
 scalar_t__ Z_ARR (int ) ;
 int Z_ARRVAL (int ) ;
 scalar_t__ Z_ARR_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int add_variable (char*,unsigned long,char*,int ,int *) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char** environ ;
 char* erealloc (char*,size_t) ;
 int http_globals ;
 int memcpy (char*,char*,unsigned long) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int tsrm_env_lock () ;
 int tsrm_env_unlock () ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void litespeed_php_import_environment_variables(zval *array_ptr)
{
    char buf[128];
    char **env, *p, *t = buf;
    size_t alloc_size = sizeof(buf);
    unsigned long nlen;

    if (Z_TYPE(PG(http_globals)[TRACK_VARS_ENV]) == IS_ARRAY &&
        Z_ARR_P(array_ptr) != Z_ARR(PG(http_globals)[TRACK_VARS_ENV]) &&
        zend_hash_num_elements(Z_ARRVAL(PG(http_globals)[TRACK_VARS_ENV])) > 0
    ) {
        zval_ptr_dtor_nogc(array_ptr);
        ZVAL_DUP(array_ptr, &PG(http_globals)[TRACK_VARS_ENV]);
        return;
    } else if (Z_TYPE(PG(http_globals)[TRACK_VARS_SERVER]) == IS_ARRAY &&
        Z_ARR_P(array_ptr) != Z_ARR(PG(http_globals)[TRACK_VARS_SERVER]) &&
        zend_hash_num_elements(Z_ARRVAL(PG(http_globals)[TRACK_VARS_SERVER])) > 0
    ) {
        zval_ptr_dtor_nogc(array_ptr);
        ZVAL_DUP(array_ptr, &PG(http_globals)[TRACK_VARS_SERVER]);
        return;
    }

    tsrm_env_lock();
    for (env = environ; env != ((void*)0) && *env != ((void*)0); env++) {
        p = strchr(*env, '=');
        if (!p) {
            continue;
        }
        nlen = p - *env;
        if (nlen >= alloc_size) {
            alloc_size = nlen + 64;
            t = (t == buf ? emalloc(alloc_size): erealloc(t, alloc_size));
        }
        memcpy(t, *env, nlen);
        t[nlen] = '\0';
        add_variable(t, nlen, p + 1, strlen( p + 1 ), array_ptr);
    }
    tsrm_env_unlock();
    if (t != buf && t != ((void*)0)) {
        efree(t);
    }
}
