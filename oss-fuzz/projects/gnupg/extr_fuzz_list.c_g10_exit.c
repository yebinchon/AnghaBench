
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GCRYCTL_TERM_SECMEM ;
 int GCRYCTL_UPDATE_RANDOM_SEED_FILE ;
 int exit (int) ;
 int gcry_control (int ) ;

void
g10_exit( int rc )
{
    gcry_control (GCRYCTL_UPDATE_RANDOM_SEED_FILE);
    gcry_control (GCRYCTL_TERM_SECMEM );
    exit (rc);
}
