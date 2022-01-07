
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALLBACK_PROMOTE_SIGNAL_FILE ;
 int PROMOTE_SIGNAL_FILE ;
 int unlink (int ) ;

void
RemovePromoteSignalFiles(void)
{
 unlink(PROMOTE_SIGNAL_FILE);
 unlink(FALLBACK_PROMOTE_SIGNAL_FILE);
}
