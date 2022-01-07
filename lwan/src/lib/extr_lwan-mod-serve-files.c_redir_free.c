
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redir_cache_data {int redir_to; } ;
struct file_cache_entry {struct redir_cache_data redir_cache_data; } ;


 int free (int ) ;

__attribute__((used)) static void redir_free(struct file_cache_entry *fce)
{
    struct redir_cache_data *rd = &fce->redir_cache_data;

    free(rd->redir_to);
}
