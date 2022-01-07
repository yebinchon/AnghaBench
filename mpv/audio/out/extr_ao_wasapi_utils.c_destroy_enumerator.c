
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enumerator {int pEnumerator; int pDevices; } ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct enumerator*) ;

__attribute__((used)) static void destroy_enumerator(struct enumerator *e)
{
    if (!e)
        return;
    SAFE_RELEASE(e->pDevices);
    SAFE_RELEASE(e->pEnumerator);
    talloc_free(e);
}
