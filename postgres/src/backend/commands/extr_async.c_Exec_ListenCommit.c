
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 scalar_t__ IsListeningOn (char const*) ;
 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int lappend (int ,int ) ;
 int listenChannels ;
 int pstrdup (char const*) ;

__attribute__((used)) static void
Exec_ListenCommit(const char *channel)
{
 MemoryContext oldcontext;


 if (IsListeningOn(channel))
  return;
 oldcontext = MemoryContextSwitchTo(TopMemoryContext);
 listenChannels = lappend(listenChannels, pstrdup(channel));
 MemoryContextSwitchTo(oldcontext);
}
