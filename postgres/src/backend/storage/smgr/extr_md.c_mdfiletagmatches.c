
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dbNode; } ;
struct TYPE_6__ {TYPE_1__ rnode; } ;
typedef TYPE_2__ FileTag ;



bool
mdfiletagmatches(const FileTag *ftag, const FileTag *candidate)
{






 return ftag->rnode.dbNode == candidate->rnode.dbNode;
}
