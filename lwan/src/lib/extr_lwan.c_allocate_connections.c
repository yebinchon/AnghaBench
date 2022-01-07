
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_connection {int dummy; } ;
struct lwan {int conns; } ;


 scalar_t__ UNLIKELY (int) ;
 int lwan_aligned_alloc (size_t const,int) ;
 int lwan_status_critical_perror (char*) ;
 int memset (int ,int ,size_t const) ;

__attribute__((used)) static void allocate_connections(struct lwan *l, size_t max_open_files)
{
    const size_t sz = max_open_files * sizeof(struct lwan_connection);

    l->conns = lwan_aligned_alloc(sz, 64);
    if (UNLIKELY(!l->conns))
        lwan_status_critical_perror("lwan_alloc_aligned");

    memset(l->conns, 0, sz);
}
