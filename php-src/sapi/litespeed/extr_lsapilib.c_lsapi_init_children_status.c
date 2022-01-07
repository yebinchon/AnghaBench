
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsapi_child_status ;
struct TYPE_2__ {int m_iMaxChildren; int m_iExtraChildren; int * m_pChildrenStatusEnd; int * m_pChildrenStatusCur; int * m_pChildrenStatus; } ;


 int MAP_ANON ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 TYPE_1__* g_prefork_server ;
 int memset (char*,int ,int) ;
 scalar_t__ mmap (int *,int,int,int,int,int ) ;
 int perror (char*) ;
 int* s_accepting_workers ;
 size_t* s_avail_pages ;
 int* s_busy_workers ;
 int* s_global_counter ;

__attribute__((used)) static int lsapi_init_children_status(void)
{
    int size = 4096;
    int max_children = g_prefork_server->m_iMaxChildren
                        + g_prefork_server->m_iExtraChildren;

    char * pBuf;
    size = max_children * sizeof( lsapi_child_status ) * 2 + 3 * sizeof(int);
    size = (size + 4095) / 4096 * 4096;
    pBuf =( char*) mmap( ((void*)0), size, PROT_READ | PROT_WRITE,
        MAP_ANON | MAP_SHARED, -1, 0 );
    if ( pBuf == MAP_FAILED )
    {
        perror( "Anonymous mmap() failed" );
        return -1;
    }
    memset( pBuf, 0, size );
    g_prefork_server->m_pChildrenStatus = (lsapi_child_status *)pBuf;
    g_prefork_server->m_pChildrenStatusCur = (lsapi_child_status *)pBuf;
    g_prefork_server->m_pChildrenStatusEnd = (lsapi_child_status *)pBuf + max_children;
    s_busy_workers = (int *)g_prefork_server->m_pChildrenStatusEnd;
    s_accepting_workers = s_busy_workers + 1;
    s_global_counter = s_accepting_workers + 1;
    s_avail_pages = (size_t *)(s_global_counter + 1);
    return 0;
}
