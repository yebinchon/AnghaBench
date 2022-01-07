; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_pbuf.c_pbuf_chain.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_pbuf.c_pbuf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }

@PBUF_DEBUG = common dso_local global i32 0, align 4
@LWIP_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pbuf_chain: %p references %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_chain(%struct.pbuf* %0, %struct.pbuf* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %5 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %7 = call i32 @pbuf_cat(%struct.pbuf* %5, %struct.pbuf* %6)
  %8 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %9 = call i32 @pbuf_ref(%struct.pbuf* %8)
  %10 = load i32, i32* @PBUF_DEBUG, align 4
  %11 = load i32, i32* @LWIP_DBG_TRACE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %14 = bitcast %struct.pbuf* %13 to i8*
  %15 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %16 = bitcast %struct.pbuf* %15 to i8*
  %17 = call i32 @LWIP_DEBUGF(i32 %12, i8* %16)
  ret void
}

declare dso_local i32 @pbuf_cat(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i32 @pbuf_ref(%struct.pbuf*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
