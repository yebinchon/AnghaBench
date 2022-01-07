
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct subre {struct subre* right; struct subre* left; } ;


 int freesrnode (struct vars*,struct subre*) ;

__attribute__((used)) static void
freesubre(struct vars *v,
    struct subre *sr)
{
 if (sr == ((void*)0))
  return;

 if (sr->left != ((void*)0))
  freesubre(v, sr->left);
 if (sr->right != ((void*)0))
  freesubre(v, sr->right);

 freesrnode(v, sr);
}
