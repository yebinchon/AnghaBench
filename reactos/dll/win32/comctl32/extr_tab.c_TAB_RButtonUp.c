
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAB_INFO ;


 int NM_RCLICK ;
 int TAB_SendSimpleNotify (int const*,int ) ;

__attribute__((used)) static inline void
TAB_RButtonUp (const TAB_INFO *infoPtr)
{
  TAB_SendSimpleNotify(infoPtr, NM_RCLICK);
}
