
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct droptarget {int data_obj; } ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct droptarget*) ;

__attribute__((used)) static void DropTarget_Destroy(struct droptarget *t)
{
    SAFE_RELEASE(t->data_obj);
    talloc_free(t);
}
