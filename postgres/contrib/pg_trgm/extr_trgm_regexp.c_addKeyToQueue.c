
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrgmStateKey ;
struct TYPE_3__ {int keysQueue; } ;
typedef TYPE_1__ TrgmNFA ;


 int lappend (int ,int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
addKeyToQueue(TrgmNFA *trgmNFA, TrgmStateKey *key)
{
 TrgmStateKey *keyCopy = (TrgmStateKey *) palloc(sizeof(TrgmStateKey));

 memcpy(keyCopy, key, sizeof(TrgmStateKey));
 trgmNFA->keysQueue = lappend(trgmNFA->keysQueue, keyCopy);
}
