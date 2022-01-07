
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;


 int AVCOL_RANGE_JPEG ;

__attribute__((used)) static inline int get_sws_range(enum AVColorRange r)
{
 return r == AVCOL_RANGE_JPEG ? 1 : 0;
}
