
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct InteractiveData const InteractiveData ;
typedef struct InteractiveData Banner1 ;


 int LOG (int ,char*) ;
 int UNUSEDPARM (struct InteractiveData const*) ;

__attribute__((used)) static void
scripting_transmit_hello(const struct Banner1 *banner1, struct InteractiveData *more)
{
    UNUSEDPARM(banner1); UNUSEDPARM(more);
    LOG(0, "SCRIPTING: HELLO\n");
}
