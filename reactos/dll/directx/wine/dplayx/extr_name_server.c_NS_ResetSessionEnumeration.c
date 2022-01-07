
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* lpNSCache ;
struct TYPE_3__ {int lpQHFirst; } ;
struct TYPE_4__ {TYPE_1__ first; int present; } ;
typedef scalar_t__ LPVOID ;



void NS_ResetSessionEnumeration( LPVOID lpNSInfo )
{
  ((lpNSCache)lpNSInfo)->present = ((lpNSCache)lpNSInfo)->first.lpQHFirst;
}
