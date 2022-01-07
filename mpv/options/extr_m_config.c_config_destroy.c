
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_config {TYPE_1__* shadow; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ num_listeners; int lock; struct TYPE_2__* data; } ;


 int assert (int) ;
 int m_config_restore_backups (struct m_config*) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (TYPE_1__*) ;

__attribute__((used)) static void config_destroy(void *p)
{
    struct m_config *config = p;
    m_config_restore_backups(config);

    talloc_free(config->data);

    if (config->shadow) {

        assert(config->shadow->num_listeners == 0);
        talloc_free(config->shadow->data);
        pthread_mutex_destroy(&config->shadow->lock);
        talloc_free(config->shadow);
    }
}
