
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srcRGB; int dstRGB; int srcAlpha; int dstAlpha; } ;
typedef TYPE_1__ NVGcompositeOperationState ;


 int NVG_ATOP ;
 int NVG_COPY ;
 int NVG_DESTINATION_ATOP ;
 int NVG_DESTINATION_IN ;
 int NVG_DESTINATION_OUT ;
 int NVG_DESTINATION_OVER ;
 int NVG_DST_ALPHA ;
 int NVG_LIGHTER ;
 int NVG_ONE ;
 int NVG_ONE_MINUS_DST_ALPHA ;
 int NVG_ONE_MINUS_SRC_ALPHA ;
 int NVG_SOURCE_IN ;
 int NVG_SOURCE_OUT ;
 int NVG_SOURCE_OVER ;
 int NVG_SRC_ALPHA ;
 int NVG_XOR ;
 int NVG_ZERO ;

__attribute__((used)) static NVGcompositeOperationState nvg__compositeOperationState(int op)
{
 int sfactor, dfactor;

 if (op == NVG_SOURCE_OVER)
 {
  sfactor = NVG_ONE;
  dfactor = NVG_ONE_MINUS_SRC_ALPHA;
 }
 else if (op == NVG_SOURCE_IN)
 {
  sfactor = NVG_DST_ALPHA;
  dfactor = NVG_ZERO;
 }
 else if (op == NVG_SOURCE_OUT)
 {
  sfactor = NVG_ONE_MINUS_DST_ALPHA;
  dfactor = NVG_ZERO;
 }
 else if (op == NVG_ATOP)
 {
  sfactor = NVG_DST_ALPHA;
  dfactor = NVG_ONE_MINUS_SRC_ALPHA;
 }
 else if (op == NVG_DESTINATION_OVER)
 {
  sfactor = NVG_ONE_MINUS_DST_ALPHA;
  dfactor = NVG_ONE;
 }
 else if (op == NVG_DESTINATION_IN)
 {
  sfactor = NVG_ZERO;
  dfactor = NVG_SRC_ALPHA;
 }
 else if (op == NVG_DESTINATION_OUT)
 {
  sfactor = NVG_ZERO;
  dfactor = NVG_ONE_MINUS_SRC_ALPHA;
 }
 else if (op == NVG_DESTINATION_ATOP)
 {
  sfactor = NVG_ONE_MINUS_DST_ALPHA;
  dfactor = NVG_SRC_ALPHA;
 }
 else if (op == NVG_LIGHTER)
 {
  sfactor = NVG_ONE;
  dfactor = NVG_ONE;
 }
 else if (op == NVG_COPY)
 {
  sfactor = NVG_ONE;
  dfactor = NVG_ZERO;
 }
 else if (op == NVG_XOR)
 {
  sfactor = NVG_ONE_MINUS_DST_ALPHA;
  dfactor = NVG_ONE_MINUS_SRC_ALPHA;
 }

 NVGcompositeOperationState state;
 state.srcRGB = sfactor;
 state.dstRGB = dfactor;
 state.srcAlpha = sfactor;
 state.dstAlpha = dfactor;
 return state;
}
